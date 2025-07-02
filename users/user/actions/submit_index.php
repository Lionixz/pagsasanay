<?php
include('../includes/action_head.php');
$currentPage = basename($_SERVER['PHP_SELF']);
?>

<body>
    <!-- Sidebar Navigation -->
    <?php include('../includes/action_sidebar.php'); ?> <!-- Include sidebar.php for the sidebar -->

    <!-- Main Content -->
    <main>
        <div class="container">
            <?php
            $conn = require_once __DIR__ . '../../config/database.php';
            if (!$conn) {
                die("Database connection failed.");
            }

            // Define categories for the exam results
            $categories = ['verbal', 'analytical', 'numerical', 'general'];
            $categoryResults = [
                'verbal' => ['score' => 0, 'total' => 0, 'correct' => [], 'wrong' => []],
                'analytical' => ['score' => 0, 'total' => 0, 'correct' => [], 'wrong' => []],
                'numerical' => ['score' => 0, 'total' => 0, 'correct' => [], 'wrong' => []],
                'general' => ['score' => 0, 'total' => 0, 'correct' => [], 'wrong' => []]
            ];

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

                $stmt = $conn->prepare("SELECT category, question, correct_answer, explanation FROM `$table` WHERE id = ?");
                if (!$stmt) {
                    die("Prepare failed: " . $conn->error);
                }

                $stmt->bind_param("i", $questionId);
                $stmt->execute();
                $stmt->bind_result($category, $question, $correctAnswer, $explanation);

                if ($stmt->fetch()) {
                    // Ensure that we map subcategories to broader categories
                    if (
                        in_array(
                            $category,
                            [
                                'Word Meaning and Usage',
                            ]
                        )
                    ) {
                        $category = 'verbal';



                    } elseif (
                        in_array(
                            $category,
                            [
                                'Foundations and Basics',
                                'Order of Operations'
                            ]
                        )
                    ) {
                        $category = 'numerical';


                    } elseif (
                        in_array($category, [
                            'Data Interpretation',
                            'Logical Reasoning'
                        ])
                    ) {
                        $category = 'analytical';


                    } elseif (
                        in_array($category, [
                            'Philippine History',
                            'General Information'
                        ])
                    ) {
                        $category = 'general';

                    }


                    $categoryResults[$category]['total']++;
                    $isCorrect = ($userAnswer === $correctAnswer);
                    if ($isCorrect) {
                        $categoryResults[$category]['score']++;
                        $categoryResults[$category]['correct'][] = [
                            'questionId' => $questionId,
                            'question' => $question,
                            'correctAnswer' => $correctAnswer,
                            'userAnswer' => $userAnswer
                        ];
                    } else {
                        $categoryResults[$category]['wrong'][] = [
                            'questionId' => $questionId,
                            'question' => $question,
                            'correctAnswer' => $correctAnswer,
                            'userAnswer' => $userAnswer,
                            'explanation' => $explanation
                        ];
                    }
                }
                $stmt->close();
            }

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

            // Display Summary at the top
            echo "<h2>Exam Summary</h2>";
            $totalScore = 0;
            $totalQuestions = 0;

            foreach ($categories as $category) {
                $categoryData = $categoryResults[$category];
                $percentage = $categoryData['total'] > 0 ? round(($categoryData['score'] / $categoryData['total']) * 100, 2) : 0;
                echo "<p><strong>" . ucfirst($category) . ":</strong> {$categoryData['score']} / {$categoryData['total']} ({$percentage}%)</p>";
                $totalScore += $categoryData['score'];
                $totalQuestions += $categoryData['total'];
            }

            // Calculate total percentage
            $totalPercentage = $totalQuestions > 0 ? round(($totalScore / $totalQuestions) * 100, 2) : 0;
            echo "<p><strong>Total:</strong> {$totalScore} / {$totalQuestions} ({$totalPercentage}%)</p>";

            // Display results per category
            foreach ($categories as $category) {
                $categoryData = $categoryResults[$category];
                $percentage = $categoryData['total'] > 0 ? round(($categoryData['score'] / $categoryData['total']) * 100, 2) : 0;

                echo "<h2>" . ucfirst($category) . " Results</h2>";
                echo "<p>Score: {$categoryData['score']} / {$categoryData['total']} ({$percentage}%)</p>";

                // Display wrong answers
                echo "<h3>Wrong Answers</h3>";
                if (!empty($categoryData['wrong'])) {
                    foreach ($categoryData['wrong'] as $r) {
                        echo "<div>
                        <p><strong>Question:</strong> " . htmlspecialchars($r['question']) . "</p>
                        <p><strong>Your answer: <br></strong>" . renderAnswer($r['userAnswer']) . "</p>
                        <p><strong>Correct answer: <br></strong>" . renderAnswer($r['correctAnswer']) . "</p>
                        <p><strong>Explanation:</strong> " . htmlspecialchars($r['explanation']) . "</p>
                      </div><hr>";
                    }
                } else {
                    echo "<p>No wrong answers. Great job!</p>";
                }




                // Display correct answers
                echo "<h3>Correct Answers</h3>";
                if (!empty($categoryData['correct'])) {
                    foreach ($categoryData['correct'] as $r) {
                        echo "<div>
                        <p><strong>Question:</strong> " . htmlspecialchars($r['question']) . "</p>
                        <p><strong>Your answer: <br></strong>" . renderAnswer($r['userAnswer']) . "</p>
                      </div><hr>";
                    }
                } else {
                    echo "<p>No correct answers.</p>";
                }

            }






            $userId = (int) $_SESSION['user_id'];

            // Function to calculate percentage
            function calculatePercentage($score, $total)
            {
                return ($total > 0) ? round(($score / $total) * 100, 2) : 0;
            }

            // Calculate percentages for each category
            $categories = ['verbal', 'numerical', 'analytical', 'general'];
            $categoryPercentages = [];
            $totalScore = 0;
            $totalQuestions = 0;

            foreach ($categories as $category) {
                $categoryPercentages[$category] = calculatePercentage($categoryResults[$category]['score'], $categoryResults[$category]['total']);
                $totalScore += $categoryResults[$category]['score'];
                $totalQuestions += $categoryResults[$category]['total'];
            }

            // Calculate total percentage
            $totalPercentage = calculatePercentage($totalScore, $totalQuestions);

            // Reset exam submission flag if results are already saved
            if (isset($_SESSION['exam_submitted']) && $_SESSION['exam_submitted'] === true) {
                unset($_SESSION['exam_submitted']); // Allow new submission by resetting session flag
            }

            // Prepare and execute the query to save results to the database
            $stmt = $conn->prepare("
                INSERT INTO exam_results 
                (user_id, verbal_percentage, numerical_percentage, analytical_percentage, general_percentage, total_percentage)
                VALUES (?, ?, ?, ?, ?, ?)
            ");

            if (!$stmt) {
                die("Prepare failed: " . $conn->error);
            }

            $stmt->bind_param("iddddd", $userId, $categoryPercentages['verbal'], $categoryPercentages['numerical'], $categoryPercentages['analytical'], $categoryPercentages['general'], $totalPercentage);

            // Execute the query and handle the result
            if ($stmt->execute()) {
                $_SESSION['exam_submitted'] = true; // Mark session as submitted to prevent re-saving the same results
                echo "<p><strong>Results saved successfully!</strong></p>";
            } else {
                echo "<p><strong>Failed to save results:</strong> " . $stmt->error . "</p>";
            }

            $stmt->close();














            ?>




        </div>
    </main>



    <?php include(__DIR__ . '/../includes/footer.php'); ?>

    <footer></footer>

</body>

</html>