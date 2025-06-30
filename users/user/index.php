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

            $verbal_category_limits = [
                'Word Meaning and Usage' => 1,
                'Word Structure and Family' => 1,
                'Grammatical Forms and Structures' => 1,
            ];

            $numerical_limits = [
                'Foundations and Basics' => 1,
                'Equations and Inequalities' => 1,
                'Functions and Graphing' => 1,
            ];

            $analytical_limits = [
                'Logic' => 1,
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
                    shuffle($types);

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
                fetchQuestionsByCategory($conn, 'verbal', $verbal_category_limits),
                fetchQuestionsByCategory($conn, 'numerical', $numerical_limits),
                fetchQuestionsByCategory($conn, 'analytical', $analytical_limits)
            );

            // Optionally shuffle the entire set
            // shuffle($questions);
            ?>


            <form action="actions/submit_index.php" method="post" id="quizForm">
                <?php foreach ($questions as $index => $q): ?>
                    <div class="card" data-index="<?= $index ?>" data-id="<?= $q['id'] ?>">

                        <h4 style="text-align: center;"><?= htmlspecialchars($q['category']) ?></h4>
                        <p><strong>Type:</strong> <?= htmlspecialchars($q['type']) ?></p>
                        <p><strong>Q<?= $index + 1 ?>:</strong> <?= htmlspecialchars($q['question']) ?></p>

                        <?php if (!empty($q['image'])):
                            $ext = strtolower(pathinfo($q['image'], PATHINFO_EXTENSION));
                            $isImage = in_array($ext, ['jpg', 'jpeg', 'png', 'gif', 'svg', 'webp']);
                            $isVideo = in_array($ext, ['mp4', 'webm']);
                            $isAudio = in_array($ext, ['mp3', 'ogg']);
                            ?>
                            <div class="question-media" style="margin: 10px 0; text-align: center;">
                                <?php if ($isImage): ?>
                                    <img src="assets/images/<?= htmlspecialchars($q['image']) ?>" alt="Question Image"
                                        style="max-width: 100%; max-height: 300px; object-fit: contain; border-radius: 8px; background: #111; padding: 5px;">
                                <?php elseif ($isVideo): ?>
                                    <video controls style="max-width: 100%; border-radius: 10px;">
                                        <source src="assets/media/<?= htmlspecialchars($q['image']) ?>" type="video/<?= $ext ?>">
                                        Your browser does not support the video tag.
                                    </video>
                                <?php elseif ($isAudio): ?>
                                    <audio controls>
                                        <source src="assets/media/<?= htmlspecialchars($q['image']) ?>" type="audio/<?= $ext ?>">
                                        Your browser does not support the audio element.
                                    </audio>
                                <?php endif; ?>
                            </div>
                        <?php endif; ?>

                        <div class="radio-group">
                            <?php foreach ($q['shuffled_choices'] as $choice): ?>
                                <input type="hidden" name="questions[<?= $index ?>][id]" value="<?= $q['id'] ?>">
                                <input type="hidden" name="questions[<?= $index ?>][table]" value="<?= $q['source_table'] ?>">

                                <?php
                                $choice_ext = strtolower(pathinfo($choice, PATHINFO_EXTENSION));
                                $choiceIsImage = in_array($choice_ext, ['jpg', 'jpeg', 'png', 'gif', 'svg', 'webp']);
                                ?>

                                <label class="custom-radio" style="display: block; margin-bottom: 10px;">
                                    <input type="radio" name="questions[<?= $index ?>][answer]"
                                        value="<?= htmlspecialchars($choice) ?>" required>
                                    <span class="radio-mark"></span>

                                    <?php if ($choiceIsImage): ?>
                                        <img src="assets/images/<?= htmlspecialchars($choice) ?>" alt="Choice Image"
                                            style="max-width: 120px; height: auto; border-radius: 6px;">
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