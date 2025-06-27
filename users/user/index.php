<!DOCTYPE html>
<html lang="en">

<?php
include('includes/head.php');
?>


<body>
    <?php include('includes/sidebar.php'); ?> <!-- Include sidebar.php for the sidebar -->
    <main>
        <div class="container">

            <?php
            // verbal ability
            $conn = require_once __DIR__ . '/config/database.php';
            $variable = 3; // Limit
            

            $sql = "
            SELECT *
            FROM (
                SELECT *,
                    ROW_NUMBER() OVER (PARTITION BY type ORDER BY RAND()) as rn
                FROM (
            SELECT *, '1_antonym' AS source_table FROM `1_antonym`
            UNION ALL
            SELECT *, '1_causality_or_result_identification' AS source_table FROM `1_causality_or_result_identification`
            UNION ALL
            SELECT *, '1_contextual_meaning' AS source_table FROM `1_contextual_meaning`
            UNION ALL
            SELECT *, '1_definition' AS source_table FROM `1_definition`
            UNION ALL
            SELECT *, '1_field_specific_meaning' AS source_table FROM `1_field_specific_meaning`
            UNION ALL
            SELECT *, '1_literal_vs_figurative_language' AS source_table FROM `1_literal_vs_figurative_language`
            UNION ALL
            SELECT *, '1_metaphor_simile_identification' AS source_table FROM `1_metaphor_simile_identification`
            UNION ALL
            SELECT *, '1_slang_vs_formal_use' AS source_table FROM `1_slang_vs_formal_use`
            UNION ALL
            SELECT *, '1_synonym' AS source_table FROM `1_synonym`
            UNION ALL
            SELECT *, '1_word_precision' AS source_table FROM `1_word_precision`
        ) AS all_questions
    ) AS numbered
    WHERE rn = 1
    ORDER BY RAND()
    LIMIT $variable";


            $result = $conn->query($sql);
            if (!$result) {
                die("Query failed: " . $conn->error);
            }
            $questions = [];
            while ($row = $result->fetch_assoc()) {
                $choices = [
                    $row['correct_answer'],
                    $row['wrong_answer1'],
                    $row['wrong_answer2'],
                    $row['wrong_answer3']
                ];
                shuffle($choices);
                $row['shuffled_choices'] = $choices;
                $questions[] = $row;
            }
            $questions = array_slice($questions, 0, $variable); // Final cut
            ?>

            <form action="actions/submit_verbal.php" method="post" id="quizForm">
                <?php foreach ($questions as $index => $q): ?>
                    <div class="card" data-index="<?= $index ?>" data-id="<?= $q['id'] ?>">
                        <p><strong></strong> <?= htmlspecialchars($q['type']) ?></p>
                        <p><strong>Q<?= $index + 1 ?>:</strong> <?= htmlspecialchars($q['question']) ?></p>
                        <div class="radio-group">
                            <?php foreach ($q['shuffled_choices'] as $choice): ?>

                                <input type="hidden" name="questions[<?= $index ?>][id]" value="<?= $q['id'] ?>">
                                <input type="hidden" name="questions[<?= $index ?>][table]" value="<?= $q['source_table'] ?>">
                                <label class="custom-radio">
                                    <input type="radio" name="questions[<?= $index ?>][answer]"
                                        value="<?= htmlspecialchars($choice) ?>" required>
                                    <!-- <span class="radio-mark"></span> -->
                                    <?= htmlspecialchars($choice) ?>
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