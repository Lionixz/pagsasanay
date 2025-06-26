<!DOCTYPE html>
<html lang="en">

<?php
require_once __DIR__ . '/../includes/auth.php';

$userId = $_SESSION['user_id'];
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo isset($title) ? $title : "Default Title"; ?></title>
    <link rel="stylesheet" href="/x/users/user/assets/css/index.css">
    <script src="/x/users/user/assets/js/index.js" defer></script>

</head>

<body>

    <!-- Side bar --><!-- Side bar --><!-- Side bar --><!-- Side bar --><!-- Side bar -->
    <nav id="sidebar">
        <ul>
            <li>
                <span class="logo">
                    <?= htmlspecialchars($_SESSION['user_id'] ?? 'Guest') ?>
                </span>

                <button onclick="toggleSidebar()" id="toggle-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                        fill="#e8eaed">
                        <path
                            d="m313-480 155 156q11 11 11.5 27.5T468-268q-11 11-28 11t-28-11L228-452q-6-6-8.5-13t-2.5-15q0-8 2.5-15t8.5-13l184-184q11-11 27.5-11.5T468-692q11 11 11 28t-11 28L313-480Zm264 0 155 156q11 11 11.5 27.5T732-268q-11 11-28 11t-28-11L492-452q-6-6-8.5-13t-2.5-15q0-8 2.5-15t8.5-13l184-184q11-11 27.5-11.5T732-692q11 11 11 28t-11 28L577-480Z" />
                    </svg>
                </button>
            </li>
            <li class="active">
                <a href="../index.php">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                        fill="#e8eaed">
                        <path
                            d="M240-200h120v-200q0-17 11.5-28.5T400-440h160q17 0 28.5 11.5T600-400v200h120v-360L480-740 240-560v360Zm-80 0v-360q0-19 8.5-36t23.5-28l240-180q21-16 48-16t48 16l240 180q15 11 23.5 28t8.5 36v360q0 33-23.5 56.5T720-120H560q-17 0-28.5-11.5T520-160v-200h-80v200q0 17-11.5 28.5T400-120H240q-33 0-56.5-23.5T160-200Zm320-270Z" />
                    </svg>
                    <span>Civil Service Exam</span>
                </a>
            </li>

            <li>
                <button onclick="toggleSubMenu(this)" class="dropdown-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                        fill="#e8eaed">
                        <path
                            d="M160-160q-33 0-56.5-23.5T80-240v-480q0-33 23.5-56.5T160-800h207q16 0 30.5 6t25.5 17l57 57h320q33 0 56.5 23.5T880-640v400q0 33-23.5 56.5T800-160H160Zm0-80h640v-400H447l-80-80H160v480Zm0 0v-480 480Zm400-160v40q0 17 11.5 28.5T600-320q17 0 28.5-11.5T640-360v-40h40q17 0 28.5-11.5T720-440q0-17-11.5-28.5T680-480h-40v-40q0-17-11.5-28.5T600-560q-17 0-28.5 11.5T560-520v40h-40q-17 0-28.5 11.5T480-440q0 17 11.5 28.5T520-400h40Z" />
                    </svg>
                    <span>Coverage</span>
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                        fill="#e8eaed">
                        <path
                            d="M480-361q-8 0-15-2.5t-13-8.5L268-556q-11-11-11-28t11-28q11-11 28-11t28 11l156 156 156-156q11-11 28-11t28 11q11 11 11 28t-11 28L508-372q-6 6-13 8.5t-15 2.5Z" />
                    </svg>
                </button>
                <ul class="sub-menu">
                    <div>
                        <li><a href="#">Numerical Ability</a></li>
                        <li><a href="#">Analytical Ability</a></li>
                        <li><a href="../verbalAbility.php">Verbal Ability</a></li>
                        <li><a href="#">General Information</a></li>
                    </div>
                </ul>
            </li>

            <li>
                <a href="../../../actions/logout.php">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="http://www.w3.org/2000/svg"
                        width="24px" fill="#e8eaed">
                        <path
                            d="M480-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47ZM160-240v-32q0-34 17.5-62.5T224-378q62-31 126-46.5T480-440q66 0 130 15.5T736-378q29 15 46.5 43.5T800-272v32q0 33-23.5 56.5T720-160H240q-33 0-56.5-23.5T160-240Zm80 0h480v-32q0-11-5.5-20T700-306q-54-27-109-40.5T480-360q-56 0-111 13.5T260-306q-9 5-14.5 14t-5.5 20v32Zm240-320q33 0 56.5-23.5T560-640q0-33-23.5-56.5T480-720q-33 0-56.5 23.5T400-640q0 33 23.5 56.5T480-560Zm0-80Zm0 400Z" />
                    </svg>
                    <span>Log Out</span>
                </a>
            </li>
        </ul>
    </nav>

    <main>
        <div class="container">

            <?php
            $conn = require_once __DIR__ . '../../config/database.php';

            $score = 0;
            $total = 0;
            $submittedAnswers = $_POST['answers'] ?? [];

            if (empty($submittedAnswers)) {
                die("No answers submitted.");
            }

            $results = [];

            foreach ($submittedAnswers as $questionId => $userAnswer) {
                $stmt = $conn->prepare("SELECT question, correct_answer, explanation FROM verbalability WHERE id = ?");
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
                        <p>
                            <?= htmlspecialchars($r['question']) ?>
                        </p>
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
                        <p>
                            <?= htmlspecialchars($r['question']) ?>
                        </p>
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

    <footer>

    </footer>

</body>

</html>