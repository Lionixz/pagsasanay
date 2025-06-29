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
            $variable = 5; // Total number of questions
            
            $tables = [
                'n_1_variables_and_expressions',
                'n_1_order_of_operations',
                'n_1_properties_of_real_numbers',
                'n_1_simplifying_algebraic_expressions',
                'n_2_solving_linear_equations',
                'n_2_solving_and_graphing_linear_inequalities',
                'n_2_applications_of_linear_equations_and_inequalities',
                'n_2_absolute_value_equations_and_inequalities',
                'n_3_understanding_functions_and_relations',
                'n_3_function_notation',
                'n_3_graphing_linear_functions_and_lines',
                'n_3_slope_and_rate_of_change',
                'n_3_slope_intercept_point_slope_standard_form',
                'n_3_graphing_inequalities_on_number_line_and_coordinate_plane',
                'n_4_solving_systems_by_graphing',
                'n_4_solving_systems_by_substitution',
                'n_4_solving_systems_by_elimination',
                'n_4_applications_of_systems_of_equations',
                'n_4_systems_of_inequalities_and_their_graphs',
                'n_5_adding_subtracting_multiplying_polynomials',
                'n_5_special_products',
                'n_5_factoring_polynomials',
                'n_5_solving_quadratic_equations_by_factoring',
                'n_6_introduction_to_quadratic_functions',
                'n_6_graphing_quadratic_functions',
                'n_6_vertex_axis_of_symmetry_and_intercepts',
                'n_6_solving_quadratic_equations',
                'n_6_quadratic_formula_and_discriminant',
                'n_7_simplifying_rational_expressions',
                'n_7_multiplying_and_dividing_rational_expressions',
                'n_7_adding_and_subtracting_rational_expressions',
                'n_7_solving_rational_equations',
                'n_7_applications_of_rational_expressions',
                'n_8_simplifying_radicals',
                'n_8_operations_with_radical_expressions',
                'n_8_solving_equations_with_radicals',
                'n_9_laws_of_exponents',
                'n_9_scientific_notation',
                'n_9_exponential_growth_and_decay',
                'n_10_arithmetic_sequences',
                'n_10_geometric_sequences',
                'n_11_mean_median_mode',
                'n_11_basic_probability'
            ];

            // Build the UNION ALL query dynamically
            $unions = array_map(fn($table) => "SELECT *, '$table' AS source_table FROM `$table`", $tables);
            $unionSql = implode(" UNION ALL ", $unions);

            $sql = " SELECT * FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY type ORDER BY RAND()) AS rn
            FROM ($unionSql) AS all_questions) AS numbered WHERE rn = 1 ORDER BY RAND() LIMIT $variable";

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

            $questions = array_slice($questions, 0, $variable); // Optional final limit
            ?>

            <form action="actions/submit_numerical.php" method="post" id="quizForm">
                <?php foreach ($questions as $index => $q): ?>
                    <div class="card" data-index="<?= $index ?>" data-id="<?= $q['id'] ?>">
                        <p><strong></strong> <?= htmlspecialchars($q['type']) ?></p>
                        <p><strong>Q<?= $index + 1 ?>:</strong> <?= htmlspecialchars($q['question']) ?></p>

                        <?php if (!empty($q['image'])): ?>
                            <div class="question-image" style="margin: 10px 0;">
                                <img src="assets/images/<?= htmlspecialchars($q['image']) ?>" alt="Question Image"
                                    style="max-width: 100%; height: auto;">
                            </div>
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
                                            style="max-width: 120px; height: auto;">
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