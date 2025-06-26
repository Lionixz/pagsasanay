<!DOCTYPE html>
<html lang="en">

<?php
require_once __DIR__ . '/../includes/auth.php';
$userId = $_SESSION['user_id'];
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= isset($title) ? $title : "Default Title"; ?></title>

    <!-- Styles and Scripts -->
    <link rel="stylesheet" href="/x/users/user/assets/css/index.css">
    <script src="/x/users/user/assets/js/index.js" defer></script>

    <!-- MathJax for LaTeX rendering -->
    <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
    <script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
</head>

<body>

    <!-- Sidebar Navigation -->
    <nav id="sidebar">
        <ul>
            <li>
                <span class="logo"><?= htmlspecialchars($_SESSION['user_id'] ?? 'Guest') ?></span>
                <button onclick="toggleSidebar()" id="toggle-btn">
                    <!-- Toggle Icon -->
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" width="24px" fill="#e8eaed"
                        viewBox="0 -960 960 960">
                        <path
                            d="m313-480 155 156q11 11 11.5 27.5T468-268q-11 11-28 11t-28-11L228-452q-6-6-8.5-13t-2.5-15q0-8 2.5-15t8.5-13l184-184q11-11 27.5-11.5T468-692q11 11 11 28t-11 28L313-480Zm264 0 155 156q11 11 11.5 27.5T732-268q-11 11-28 11t-28-11L492-452q-6-6-8.5-13t-2.5-15q0-8 2.5-15t8.5-13l184-184q11-11 27.5-11.5T732-692q11 11 11 28t-11 28L577-480Z" />
                    </svg>
                </button>
            </li>

            <li class="active">
                <a href="../index.php">
                    <!-- Home Icon -->
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" width="24px" fill="#e8eaed"
                        viewBox="0 -960 960 960">
                        <path
                            d="M240-200h120v-200q0-17 11.5-28.5T400-440h160q17 0 28.5 11.5T600-400v200h120v-360L480-740 240-560v360Z" />
                    </svg>
                    <span>Civil Service Exam</span>
                </a>
            </li>

            <li>
                <button onclick="toggleSubMenu(this)" class="dropdown-btn">
                    <!-- Folder Icon -->
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" width="24px" fill="#e8eaed"
                        viewBox="0 -960 960 960">
                        <path
                            d="M160-160q-33 0-56.5-23.5T80-240v-480q0-33 23.5-56.5T160-800h207q16 0 30.5 6t25.5 17l57 57h320q33 0 56.5 23.5T880-640v400q0 33-23.5 56.5T800-160H160Z" />
                    </svg>
                    <span>Coverage</span>
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" width="24px" fill="#e8eaed"
                        viewBox="0 -960 960 960">
                        <path
                            d="M480-361q-8 0-15-2.5t-13-8.5L268-556q-11-11-11-28t11-28q11-11 28-11t28 11l156 156 156-156q11-11 28-11t28 11q11 11 11 28t-11 28L508-372q-6 6-13 8.5t-15 2.5Z" />
                    </svg>
                </button>
                <ul class="sub-menu">
                    <div>
                        <li><a href="../numericalAbility.php">Numerical Ability</a></li>
                        <li><a href="#">Analytical Ability</a></li>
                        <li><a href="../verbalAbility.php">Verbal Ability</a></li>
                        <li><a href="#">General Information</a></li>
                    </div>
                </ul>
            </li>

            <li>
                <a href="../../../actions/logout.php">
                    <!-- Logout Icon -->
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" width="24px" fill="#e8eaed"
                        viewBox="0 -960 960 960">
                        <path
                            d="M480-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47ZM160-240v-32q0-34 17.5-62.5T224-378q62-31 126-46.5T480-440q66 0 130 15.5T736-378q29 15 46.5 43.5T800-272v32q0 33-23.5 56.5T720-160H240q-33 0-56.5-23.5T160-240Z" />
                    </svg>
                    <span>Log Out</span>
                </a>
            </li>
        </ul>
    </nav>

    <!-- Main Content -->
    <main>
        <div class="container">

            <?php
            $conn = require_once __DIR__ . '../../config/database.php';
            if (!$conn) {
                die("Database connection failed.");
            }

            $score = 0;
            $total = 0;
            $submittedAnswers = $_POST['answers'] ?? [];

            if (empty($submittedAnswers)) {
                die("No answers submitted.");
            }

            $results = [];

            foreach ($submittedAnswers as $questionId => $userAnswer) {
                $stmt = $conn->prepare("SELECT question, correct_answer, explanation FROM numericalability WHERE id = ?");
                if (!$stmt) {
                    die("Prepare failed: " . $conn->error);
                }

                $stmt->bind_param("i", $questionId);
                $stmt->execute();
                $stmt->bind_result($question, $correctAnswer, $explanation);

                if ($stmt->fetch()) {
                    $total++;
                    $isCorrect = ($userAnswer === $correctAnswer);
                    if ($isCorrect)
                        $score++;

                    $results[] = [
                        'questionId' => $questionId,
                        'question' => $question,
                        'correct' => $isCorrect,
                        'correctAnswer' => $correctAnswer,
                        'userAnswer' => $userAnswer,
                        'explanation' => $explanation
                    ];
                }

                $stmt->close();
            }

            $wrongAnswers = array_filter($results, fn($r) => !$r['correct']);
            $correctAnswers = array_filter($results, fn($r) => $r['correct']);

            $percentage = $total > 0 ? round(($score / $total) * 100, 2) : 0;
            ?>

            <h2>Exam Results</h2>
            <p>Score: <?= $score ?> / <?= $total ?> (<?= $percentage ?>%)</p>

            <h3>Wrong Answers</h3>
            <?php if (!empty($wrongAnswers)): ?>
                <?php foreach ($wrongAnswers as $r): ?>
                    <div>
                        <p><?= htmlspecialchars($r['question']) ?></p>
                        <p>Your answer: <?= htmlspecialchars($r['userAnswer']) ?></p>
                        <p>Correct answer: <?= htmlspecialchars($r['correctAnswer']) ?></p>
                        <p>Explanation: <?= htmlspecialchars($r['explanation']) ?></p>
                    </div>
                    <hr>
                <?php endforeach; ?>
            <?php else: ?>
                <p>No wrong answers. Good job.</p>
            <?php endif; ?>

            <h3>Correct Answers</h3>
            <?php if (!empty($correctAnswers)): ?>
                <?php foreach ($correctAnswers as $r): ?>
                    <div>
                        <p><?= htmlspecialchars($r['question']) ?></p>
                        <p>Your answer: <?= htmlspecialchars($r['userAnswer']) ?></p>
                    </div>
                    <hr>
                <?php endforeach; ?>
            <?php else: ?>
                <p>No correct answers.</p>
            <?php endif; ?>

        </div>
    </main>

    <?php include(__DIR__ . '/../includes/footer.php'); ?>

    <footer></footer>

</body>

</html>