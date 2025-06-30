<!DOCTYPE html>
<html lang="en">

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
            $analytical_limits = [
                'Data Interpretation' => 3,
                'Logical Reasoning' => 3,
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

                    // shuffle($types);
            
                    $selectedCount = 0;
                    // Select 1 random question per type
                    foreach ($types as $type) {
                        if ($selectedCount >= $limit)
                            break;
                        $stmt = $conn->prepare("SELECT * FROM $table WHERE category = ? AND type = ? ORDER BY RAND() LIMIT 1");
                        $stmt->bind_param("ss", $category, $type);
                        $stmt->execute();
                        $result = $stmt->get_result();

                        if ($row = $result->fetch_assoc()) {
                            $questions[] = prepareQuestionRow($row, $table);
                            $selectedCount++;
                        }
                    }

                    // Fill in remaining if fewer types than limit
                    if ($selectedCount < $limit) {
                        $remaining = $limit - $selectedCount;

                        $stmt = $conn->prepare("SELECT * FROM $table WHERE category = ? ORDER BY RAND() LIMIT ?");
                        $stmt->bind_param("si", $category, $remaining);
                        $stmt->execute();
                        $result = $stmt->get_result();

                        while ($row = $result->fetch_assoc()) {
                            $questions[] = prepareQuestionRow($row, $table);
                            $selectedCount++;
                        }
                    }
                }

                return $questions;
            }

            // Fetch from all tables
            $questions = array_merge(
                fetchQuestionsByCategory($conn, 'analytical', $analytical_limits)
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
                            <div class="chart-container" style="width:100%; height:auto;">
                                <canvas id="chart<?= $index ?>"></canvas>
                            </div>

                            <script>
                                const chartConfig<?= $index ?> = <?= $q['chart_data'] ?>;
                                const ctx<?= $index ?> = document.getElementById('chart<?= $index ?>').getContext('2d');
                                new Chart(ctx<?= $index ?>, {
                                    type: 'bar',
                                    data: chartConfig<?= $index ?>,
                                    options: {
                                        responsive: true,
                                        scales: {
                                            y: {
                                                beginAtZero: true
                                            }
                                        },
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
                                        events: [] // Fully disables all mouse events
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