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

            $numericalLimit = 10; // Change to however many questions you want
            $questions = [];

            $sqlNum = "SELECT * FROM numericalability ORDER BY RAND() LIMIT $numericalLimit";
            $resultNum = $conn->query($sqlNum);
            if (!$resultNum)
                die("Numerical query failed: " . $conn->error);

            while ($row = $resultNum->fetch_assoc()) {
                $choices = [
                    $row['correct_answer'],
                    $row['wrong_answer1'],
                    $row['wrong_answer2'],
                    $row['wrong_answer3']
                ];
                shuffle($choices);
                $row['shuffled_choices'] = $choices;
                $row['question_text'] = $row['question']; // Already LaTeX-formatted
                $row['category'] = 'numerical';
                $questions[] = $row;
            }
            shuffle($questions);
            ?>

            <!-- MathJax for rendering LaTeX math -->
            <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
            <script id="MathJax-script" async
                src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>

            <form action="actions/submit_numerical.php" method="post" id="quizForm">
                <?php foreach ($questions as $index => $q): ?>

                    <div class="card" data-index="<?= $index ?>" data-id="<?= $q['id'] ?>">
                        <?= ucfirst($q['category']) ?>
                        <p><strong>Q<?= $index + 1 ?>:</strong> <?= $q['question_text'] ?>
                        </p>
                        <div class="radio-group">
                            <?php foreach ($q['shuffled_choices'] as $choice): ?>
                                <label class="custom-radio">
                                    <input type="radio" name="answers[<?= $q['id'] ?>]" value="<?= htmlspecialchars($choice) ?>"
                                        required>
                                    <span class="radio-mark"></span>
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