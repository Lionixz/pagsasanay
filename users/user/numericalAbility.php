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
            // Connect to DB
            $conn = require_once __DIR__ . '/config/database.php';
            $variable = 3; // Limit the total number of returned questions
            
            $sql = "SELECT * FROM (SELECT *,
        ROW_NUMBER() OVER (PARTITION BY type ORDER BY RAND()) as rn FROM (
        SELECT *, 'n_1_variables_and_expressions' AS source_table FROM `n_1_variables_and_expressions`
        UNION ALL
        SELECT *, 'n_1_order_of_operations' AS source_table FROM `n_1_order_of_operations`
        UNION ALL
        SELECT *, 'n_1_properties_of_real_numbers' AS source_table FROM `n_1_properties_of_real_numbers`
        UNION ALL
        SELECT *, 'n_1_simplifying_algebraic_expressions' AS source_table FROM `n_1_simplifying_algebraic_expressions`
        UNION ALL
        SELECT *, 'n_2_solving_linear_equations' AS source_table FROM `n_2_solving_linear_equations`
        UNION ALL
        SELECT *, 'n_2_solving_and_graphing_linear_inequalities' AS source_table FROM `n_2_solving_and_graphing_linear_inequalities`
        UNION ALL
        SELECT *, 'n_2_applications_of_linear_equations_and_inequalities' AS source_table FROM `n_2_applications_of_linear_equations_and_inequalities`
        UNION ALL
        SELECT *, 'n_2_absolute_value_equations_and_inequalities' AS source_table FROM `n_2_absolute_value_equations_and_inequalities`
        UNION ALL
        SELECT *, 'n_3_understanding_functions_and_relations' AS source_table FROM `n_3_understanding_functions_and_relations`
        UNION ALL
        SELECT *, 'n_3_function_notation' AS source_table FROM `n_3_function_notation`
        UNION ALL
        SELECT *, 'n_3_graphing_linear_functions_and_lines' AS source_table FROM `n_3_graphing_linear_functions_and_lines`
        UNION ALL
        SELECT *, 'n_3_slope_and_rate_of_change' AS source_table FROM `n_3_slope_and_rate_of_change`
        UNION ALL
        SELECT *, 'n_3_slope_intercept_point_slope_standard_form' AS source_table FROM `n_3_slope_intercept_point_slope_standard_form`
        UNION ALL
        SELECT *, 'n_3_graphing_inequalities_on_number_line_and_coordinate_plane' AS source_table FROM `n_3_graphing_inequalities_on_number_line_and_coordinate_plane`
        UNION ALL
        SELECT *, 'n_4_solving_systems_by_graphing' AS source_table FROM `n_4_solving_systems_by_graphing`
        UNION ALL
        SELECT *, 'n_4_solving_systems_by_substitution' AS source_table FROM `n_4_solving_systems_by_substitution`
        UNION ALL
        SELECT *, 'n_4_solving_systems_by_elimination' AS source_table FROM `n_4_solving_systems_by_elimination`
        UNION ALL
        SELECT *, 'n_4_applications_of_systems_of_equations' AS source_table FROM `n_4_applications_of_systems_of_equations`
        UNION ALL
        SELECT *, 'n_4_systems_of_inequalities_and_their_graphs' AS source_table FROM `n_4_systems_of_inequalities_and_their_graphs`
        UNION ALL
        SELECT *, 'n_5_adding_subtracting_multiplying_polynomials' AS source_table FROM `n_5_adding_subtracting_multiplying_polynomials`
        UNION ALL
        SELECT *, 'n_5_special_products' AS source_table FROM `n_5_special_products`
        UNION ALL
        SELECT *, 'n_5_factoring_polynomials' AS source_table FROM `n_5_factoring_polynomials`
        UNION ALL
        SELECT *, 'n_5_solving_quadratic_equations_by_factoring' AS source_table FROM `n_5_solving_quadratic_equations_by_factoring`
        UNION ALL
        SELECT *, 'n_6_introduction_to_quadratic_functions' AS source_table FROM `n_6_introduction_to_quadratic_functions`
        UNION ALL
        SELECT *, 'n_6_graphing_quadratic_functions' AS source_table FROM `n_6_graphing_quadratic_functions`
        UNION ALL
        SELECT *, 'n_6_vertex_axis_of_symmetry_and_intercepts' AS source_table FROM `n_6_vertex_axis_of_symmetry_and_intercepts`
        UNION ALL
        SELECT *, 'n_6_solving_quadratic_equations' AS source_table FROM `n_6_solving_quadratic_equations`
        UNION ALL
        SELECT *, 'n_6_quadratic_formula_and_discriminant' AS source_table FROM `n_6_quadratic_formula_and_discriminant`
        UNION ALL
        SELECT *, 'n_7_simplifying_rational_expressions' AS source_table FROM `n_7_simplifying_rational_expressions`
        UNION ALL
        SELECT *, 'n_7_multiplying_and_dividing_rational_expressions' AS source_table FROM `n_7_multiplying_and_dividing_rational_expressions`
        UNION ALL
        SELECT *, 'n_7_adding_and_subtracting_rational_expressions' AS source_table FROM `n_7_adding_and_subtracting_rational_expressions`
        UNION ALL
        SELECT *, 'n_7_solving_rational_equations' AS source_table FROM `n_7_solving_rational_equations`
        UNION ALL
        SELECT *, 'n_7_applications_of_rational_expressions' AS source_table FROM `n_7_applications_of_rational_expressions`
        UNION ALL
        SELECT *, 'n_8_simplifying_radicals' AS source_table FROM `n_8_simplifying_radicals`
        UNION ALL
        SELECT *, 'n_8_operations_with_radical_expressions' AS source_table FROM `n_8_operations_with_radical_expressions`
        UNION ALL
        SELECT *, 'n_8_solving_equations_with_radicals' AS source_table FROM `n_8_solving_equations_with_radicals`
        UNION ALL
        SELECT *, 'n_9_laws_of_exponents' AS source_table FROM `n_9_laws_of_exponents`
        UNION ALL
        SELECT *, 'n_9_scientific_notation' AS source_table FROM `n_9_scientific_notation`
        UNION ALL
        SELECT *, 'n_9_exponential_growth_and_decay' AS source_table FROM `n_9_exponential_growth_and_decay`
        UNION ALL
        SELECT *, 'n_10_arithmetic_sequences' AS source_table FROM `n_10_arithmetic_sequences`
        UNION ALL
        SELECT *, 'n_10_geometric_sequences' AS source_table FROM `n_10_geometric_sequences`
        UNION ALL
        SELECT *, 'n_11_mean_median_mode' AS source_table FROM `n_11_mean_median_mode`
        UNION ALL
        SELECT *, 'n_11_basic_probability' AS source_table FROM `n_11_basic_probability`) AS all_questions
            ) AS numbered
            WHERE rn = 1 ORDER BY RAND() LIMIT $variable";

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

            $questions = array_slice($questions, 0, $variable); // optional final slice
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