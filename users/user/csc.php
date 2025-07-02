<?php
include('includes/head.php');
$currentPage = basename($_SERVER['PHP_SELF']);
?>

<body>
    <?php include('includes/sidebar.php'); ?> <!-- Include sidebar.php for the sidebar -->
    <main>
        <div class="container">
            <?php
            $conn = require_once __DIR__ . '/config/database.php';
            $verbal_category_limits = [
                'Word Meaning and Usage' => 3,
            ];
            $numerical_limits = [
                'Foundations and Basics' => 3,
                'Order of Operations' => 3,
            ];
            $analytical_limits = [
                'Data Interpretation' => 10,
                'Logical Reasoning' => 3,
            ];
            $general_limits = [
                'Philippine History' => 3,
            ];
            function prepareQuestionRow($row, $source_table)
            {
                $choices = [
                    $row['correct_answer'],
                    $row['wrong_answer1'],
                    $row['wrong_answer2'],
                    $row['wrong_answer3']
                ];
                shuffle($choices);
                $row['source_table'] = $source_table;
                $row['shuffled_choices'] = $choices;
                return $row;
            }
            function fetchQuestionsByCategory($conn, $table, $category_limits)
            {
                $questions = [];
                foreach ($category_limits as $category => $limit) {
                    // Get distinct types per category
                    $typeStmt = $conn->prepare("SELECT DISTINCT type FROM $table WHERE category = ?");
                    $typeStmt->bind_param("s", $category);
                    $typeStmt->execute();
                    $typeResult = $typeStmt->get_result();
                    $types = [];
                    while ($row = $typeResult->fetch_assoc()) {
                        $types[] = $row['type'];
                    }
                    // Check if there are any distinct types
                    $totalTypes = count($types);
                    if ($totalTypes === 0) {
                        // No types found, skip to the next category
                        continue;
                    }
                    // Shuffle the types to randomize question fetching
                    shuffle($types);
                    $selectedCount = 0;
                    // Calculate base number of questions per type
                    $baseQuestionsPerType = intdiv($limit, $totalTypes); // Equal distribution per type
                    $remainingQuestions = $limit - ($baseQuestionsPerType * $totalTypes); // Remaining questions to be allocated
                    // Select questions for each type
                    foreach ($types as $type) {
                        $questionsForThisType = $baseQuestionsPerType;
                        // Distribute the remaining questions one per type
                        if ($remainingQuestions > 0) {
                            $questionsForThisType++;
                            $remainingQuestions--;
                        }
                        // Fetch the questions for this type
                        $stmt = $conn->prepare("SELECT * FROM $table WHERE category = ? AND type = ? ORDER BY RAND() LIMIT ?");
                        $stmt->bind_param("ssi", $category, $type, $questionsForThisType);
                        $stmt->execute();
                        $result = $stmt->get_result();
                        while ($row = $result->fetch_assoc()) {
                            $questions[] = prepareQuestionRow($row, $table);
                            $selectedCount++;
                        }
                        // If we've selected enough questions, exit
                        if ($selectedCount >= $limit) {
                            break;
                        }
                    }
                }
                return $questions;
            }
            // Fetch from all tables
            $questions = array_merge(
                fetchQuestionsByCategory($conn, 'verbal', $verbal_category_limits),
                fetchQuestionsByCategory($conn, 'analytical', $analytical_limits),
                fetchQuestionsByCategory($conn, 'numerical', $numerical_limits),
                fetchQuestionsByCategory($conn, 'general', $general_limits)
            );
            // Optionally shuffle the entire set
            // shuffle($questions);
            ?>
            <form action="actions/submit_index.php" method="post" id="quizForm">
                <?php foreach ($questions as $index => $q): ?>
                    <div class="card" data-index="<?= $index ?>" data-id="<?= $q['id'] ?>">
                        <h4 style="text-align: center;"><strong></strong> <?= htmlspecialchars($q['category']) ?></h4>
                        <p><strong></strong> <?= htmlspecialchars($q['type']) ?></p>
                        <p><strong>Q<?= $index + 1 ?>:</strong> <?= htmlspecialchars($q['question']) ?></p>

                        <?php if (!empty($q['image'])): ?>
                            <div class="question-media">
                                <img src="assets/images/<?= htmlspecialchars($q['image']) ?>" alt="Question Image"
                                    style="max-width: 50%; height: auto;">
                            </div>
                        <?php endif; ?>
                        <?php if (!empty($q['chart_data'])): ?>
                            <div class="chart-container">
                                <canvas id="chart<?= $index ?>"></canvas>
                            </div>
                            <script>
                                // original
                                const chartData<?= $index ?> = <?= $q['chart_data'] ?>;
                                const ctx<?= $index ?> = document.getElementById('chart<?= $index ?>').getContext('2d');
                                // If `type` exists in the database, use it, otherwise default to 'bar'
                                const chartType<?= $index ?> = '<?= $q['type'] ?? 'bar' ?>';
                                new Chart(ctx<?= $index ?>, {
                                    type: chartType<?= $index ?>,
                                    data: chartData<?= $index ?>,
                                    options: {
                                        responsive: true,
                                        scales: (chartType<?= $index ?> === 'bar' || chartType<?= $index ?> === 'line') ? {
                                            y: {
                                                beginAtZero: true
                                            }
                                        } : {},
                                        interaction: {
                                            mode: null
                                        },
                                        plugins: {
                                            tooltip: {
                                                enabled: false
                                            },
                                            legend: {
                                                onClick: null
                                            }
                                        },
                                        events: []
                                    }
                                });
                            </script>
                        <?php endif; ?>
                        <div class="radio-group">
                            <?php foreach ($q['shuffled_choices'] as $choice): ?>
                                <input type="hidden" name="questions[<?= $index ?>][id]" value="<?= $q['id'] ?>">
                                <input type="hidden" name="questions[<?= $index ?>][table]" value="<?= $q['source_table'] ?>">
                                <?php
                                $ext = strtolower(pathinfo($choice, PATHINFO_EXTENSION));
                                $isImage = in_array($ext, ['jpg', 'jpeg', 'png', 'gif', 'svg', 'webp']);
                                ?>
                                <label class="custom-radio" style="display: block; margin-bottom: 10px;">
                                    <input type="radio" name="questions[<?= $index ?>][answer]"
                                        value="<?= htmlspecialchars($choice) ?>" required>
                                    <span class="radio-mark"></span>
                                    <?php if ($isImage): ?>
                                        <img src="assets/images/<?= htmlspecialchars($choice) ?>" alt="Choice Image"
                                            style="max-width: 50%; height: auto;">
                                    <?php else: ?>
                                        <?= htmlspecialchars($choice) ?>
                                    <?php endif; ?>
                                </label>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
                <div class="navigation">
                    <button type="button" id="prevBtn">Previous</button>
                    <button type="button" id="nextBtn">Next</button>
                </div>
                <div style="text-align:center; margin-top:15px;">
                    <button type="submit" id="submitBtn" hidden aria-hidden="true" tabindex="-1"></button>
                </div>
            </form>
            <script>
                const cards = document.querySelectorAll('.card');
                const totalQuestions = cards.length;
                const nextBtn = document.getElementById('nextBtn');
                const prevBtn = document.getElementById('prevBtn');
                const submitBtn = document.getElementById('submitBtn');
                const quizForm = document.getElementById('quizForm');
                const answered = new Set();
                let currentCard = 0;
                function updateCards() {
                    cards.forEach((card, index) => {
                        if (index === currentCard && !answered.has(index)) {
                            card.classList.add('active');
                        } else {
                            card.classList.remove('active');
                        }
                    });
                    // Always show navigation buttons
                    prevBtn.style.display = 'inline-block';
                    nextBtn.style.display = 'inline-block';

                    if (answered.size === totalQuestions) {
                        submitBtn.style.display = 'inline-block';
                        quizForm.submit(); // Auto-submit
                    }
                }
                // Handle answer selection
                document.querySelectorAll('input[type="radio"]').forEach(input => {
                    input.addEventListener('change', function () {
                        const parentCard = input.closest('.card');
                        const index = parseInt(parentCard.dataset.index);
                        answered.add(index);
                        parentCard.classList.remove('active');
                        // Go to next unanswered question
                        let next = index + 1;
                        while (next < totalQuestions && answered.has(next)) next++;
                        if (next < totalQuestions) {
                            currentCard = next;
                        } else {
                            let prev = index - 1;
                            while (prev >= 0 && answered.has(prev)) prev--;
                            currentCard = prev >= 0 ? prev : 0;
                        }
                        updateCards();
                    });
                });
                nextBtn.addEventListener('click', () => {
                    let next = currentCard + 1;
                    // Wrap around to start if needed
                    while (next !== currentCard) {
                        if (next >= totalQuestions) next = 0;
                        if (!answered.has(next)) {
                            currentCard = next;
                            updateCards();
                            return;
                        }
                        next++;
                    }
                });
                prevBtn.addEventListener('click', () => {
                    let prev = currentCard - 1;
                    // Wrap around to end if needed
                    while (prev !== currentCard) {
                        if (prev < 0) prev = totalQuestions - 1;
                        if (!answered.has(prev)) {
                            currentCard = prev;
                            updateCards();
                            return;
                        }
                        prev--;
                    }
                });
                // Initialize to first unanswered
                function findFirstUnanswered() {
                    for (let i = 0; i < totalQuestions; i++) {
                        if (!answered.has(i)) return i;
                    }
                    return -1;
                }
                currentCard = findFirstUnanswered();
                updateCards();
            </script>
        </div>
    </main>
    <?php include('includes/footer.php'); ?> <!-- Include footer.php for the footer -->
</body>

</html>