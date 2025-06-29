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
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                        fill="#e3e3e3">
                        <path
                            d="M200-200v-560 179-19 400Zm80-240h221q2-22 10-42t20-38H280v80Zm0 160h157q17-20 39-32.5t46-20.5q-4-6-7-13t-5-14H280v80Zm0-320h400v-80H280v80Zm-80 480q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h560q33 0 56.5 23.5T840-760v258q-14-26-34-46t-46-33v-179H200v560h202q-1 6-1.5 12t-.5 12v56H200Zm480-200q-42 0-71-29t-29-71q0-42 29-71t71-29q42 0 71 29t29 71q0 42-29 71t-71 29ZM480-120v-56q0-24 12.5-44.5T528-250q36-15 74.5-22.5T680-280q39 0 77.5 7.5T832-250q23 9 35.5 29.5T880-176v56H480Z" />
                    </svg>
                    <span>Civil Service Exam</span>
                </a>
            </li>

            <li>
                <button onclick="toggleSubMenu(this)" class="dropdown-btn">
                    <!-- Folder Icon -->
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                        fill="#e8eaed">
                        <path
                            d="M160-160q-33 0-56.5-23.5T80-240v-480q0-33 23.5-56.5T160-800h207q16 0 30.5 6t25.5 17l57 57h320q33 0 56.5 23.5T880-640v400q0 33-23.5 56.5T800-160H160Zm0-80h640v-400H447l-80-80H160v480Zm400-160v40q0 17 11.5 28.5T600-320q17 0 28.5-11.5T640-360v-40h40q17 0 28.5-11.5T720-440q0-17-11.5-28.5T680-480h-40v-40q0-17-11.5-28.5T600-560q-17 0-28.5 11.5T560-520v40h-40q-17 0-28.5 11.5T480-440q0 17 11.5 28.5T520-400h40Z" />
                    </svg>
                    <span>CSC Coverage</span>
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                        fill="#e8eaed">
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
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                        fill="#e3e3e3">
                        <path
                            d="M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h280v80H200v560h280v80H200Zm440-160-55-58 102-102H360v-80h327L585-622l55-58 200 200-200 200Z" />
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
            $results = [];

            // Validate and extract data
            if (!isset($_POST['questions']) || !is_array($_POST['questions'])) {
                die("No answers submitted.");
            }

            foreach ($_POST['questions'] as $q) {
                if (!isset($q['id'], $q['answer'], $q['table']))
                    continue;

                $questionId = (int) $q['id'];
                $userAnswer = $q['answer'];
                $table = $conn->real_escape_string($q['table']); // escape table name
            
                // Prevent SQL injection via table name
                if (!preg_match('/^[a-zA-Z0-9_]+$/', $table))
                    continue;

                $stmt = $conn->prepare("SELECT question, correct_answer, explanation FROM `$table` WHERE id = ?");
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

            // Render function for image/text answers
            function renderAnswer($answer)
            {
                $ext = strtolower(pathinfo($answer, PATHINFO_EXTENSION));
                $isImage = in_array($ext, ['jpg', 'jpeg', 'png', 'gif', 'svg', 'webp']);
                if ($isImage) {
                    return '<img src="../assets/images/' . htmlspecialchars($answer) . '" alt="Image Answer" style="max-width: 120px; height: auto;">';
                }
                return htmlspecialchars($answer);
            }
            ?>

            <h2>Exam Results</h2>
            <p>Score: <?= $score ?> / <?= $total ?> (<?= $percentage ?>%)</p>

            <h3>Wrong Answers</h3>
            <?php if (!empty($wrongAnswers)): ?>
                <?php foreach ($wrongAnswers as $r): ?>
                    <div>
                        <p><strong>Question:</strong> <?= htmlspecialchars($r['question']) ?></p>
                        <p><strong>Your answer: <br></strong> <?= renderAnswer($r['userAnswer']) ?></p>
                        <p><strong>Correct answer: <br></strong> <?= renderAnswer($r['correctAnswer']) ?></p>
                        <p><strong>Explanation:</strong> <?= htmlspecialchars($r['explanation']) ?></p>
                    </div>
                    <hr>
                <?php endforeach; ?>
            <?php else: ?>
                <p>No wrong answers. Great job!</p>
            <?php endif; ?>

            <h3>Correct Answers</h3>
            <?php if (!empty($correctAnswers)): ?>
                <?php foreach ($correctAnswers as $r): ?>
                    <div>
                        <p><strong>Question:</strong> <?= htmlspecialchars($r['question']) ?></p>
                        <p><strong>Your answer: <br></strong> <?= renderAnswer($r['userAnswer']) ?></p>
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