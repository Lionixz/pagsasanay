CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_token_hash` varchar(64) DEFAULT NULL,
  `reset_token_expires_at` datetime DEFAULT NULL,
  `account_activation_hash` varchar(64) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `reset_token_hash` (`reset_token_hash`),
  UNIQUE KEY `account_activation_hash` (`account_activation_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



1_antonym
1_causality_or_result_identification
1_contextual_meaning
1_definition
1_field_specific_meaning
1_literal_vs_figurative_language
1_metaphor_simile_identification
1_slang_vs_formal_use
1_synonym
1_word_precision

2_affix_identification
2_pronunciation_challenge
2_root_word
2_word_association
2_word_classification
2_word_family
2_word_formation
2_word_stress_identification

3_adjective_form
3_adverb_form
3_causative_form
3_conditional_sentence_identification
3_correct_comparative_form
3_correct_superlative_form
3_noun_form
3_part_of_speech
3_plural_form
3_pronoun_case
3_subject_verb_agreement
3_tense_form
3_verb_form
3_voice



-- 1_ tables with Verbal prefix
CREATE TABLE `varbal_1_antonym` (
  `id` INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` VARCHAR(100) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `question` TEXT NOT NULL,
  `image` VARCHAR(255) DEFAULT NULL,
  `correct_answer` VARCHAR(255) NOT NULL,
  `wrong_answer1` VARCHAR(255) NOT NULL,
  `wrong_answer2` VARCHAR(255) NOT NULL,
  `wrong_answer3` VARCHAR(255) NOT NULL,
  `explanation` TEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Clone of the same schema for all others
CREATE TABLE `v_1_causality_or_result_identification` LIKE `v_1_antonym`;
CREATE TABLE `v_1_contextual_meaning` LIKE `v_1_antonym`;
CREATE TABLE `v_1_definition` LIKE `v_1_antonym`;
CREATE TABLE `v_1_field_specific_meaning` LIKE `v_1_antonym`;
CREATE TABLE `v_1_literal_vs_figurative_language` LIKE `v_1_antonym`;
CREATE TABLE `v_1_metaphor_simile_identification` LIKE `v_1_antonym`;
CREATE TABLE `v_1_slang_vs_formal_use` LIKE `v_1_antonym`;
CREATE TABLE `v_1_synonym` LIKE `v_1_antonym`;
CREATE TABLE `v_1_word_precision` LIKE `v_1_antonym`;

-- 2_ tables with varbal_ prefix
CREATE TABLE `v_2_affix_identification` LIKE `v_1_antonym`;
CREATE TABLE `v_2_pronunciation_challenge` LIKE `v_1_antonym`;
CREATE TABLE `v_2_root_word` LIKE `v_1_antonym`;
CREATE TABLE `v_2_word_association` LIKE `v_1_antonym`;
CREATE TABLE `v_2_word_classification` LIKE `v_1_antonym`;
CREATE TABLE `v_2_word_family` LIKE `v_1_antonym`;
CREATE TABLE `v_2_word_formation` LIKE `v_1_antonym`;
CREATE TABLE `v_2_word_stress_identification` LIKE `v_1_antonym`;

-- 3_ tables with varbal_ prefix
CREATE TABLE `v_3_adjective_form` LIKE `v_1_antonym`;
CREATE TABLE `v_3_adverb_form` LIKE `v_1_antonym`;
CREATE TABLE `v_3_causative_form` LIKE `v_1_antonym`;
CREATE TABLE `v_3_conditional_sentence_identification` LIKE `v_1_antonym`;
CREATE TABLE `v_3_correct_comparative_form` LIKE `v_1_antonym`;
CREATE TABLE `v_3_correct_superlative_form` LIKE `v_1_antonym`;
CREATE TABLE `v_3_noun_form` LIKE `v_1_antonym`;
CREATE TABLE `v_3_part_of_speech` LIKE `v_1_antonym`;
CREATE TABLE `v_3_plural_form` LIKE `v_1_antonym`;
CREATE TABLE `v_3_pronoun_case` LIKE `v_1_antonym`;
CREATE TABLE `v_3_subject_verb_agreement` LIKE `v_1_antonym`;
CREATE TABLE `v_3_tense_form` LIKE `v_1_antonym`;
CREATE TABLE `v_3_verb_form` LIKE `v_1_antonym`;
CREATE TABLE `v_3_voice` LIKE `v_1_antonym`;



CREATE TABLE `n_1_variables_and_expressions` (
  `id` INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` VARCHAR(100) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `question` TEXT NOT NULL,
  `image` VARCHAR(255) DEFAULT NULL,
  `correct_answer` VARCHAR(255) NOT NULL,
  `wrong_answer1` VARCHAR(255) NOT NULL,
  `wrong_answer2` VARCHAR(255) NOT NULL,
  `wrong_answer3` VARCHAR(255) NOT NULL,
  `explanation` TEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `n_1_order_of_operations` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_1_properties_of_real_numbers` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_1_simplifying_algebraic_expressions` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_2_solving_linear_equations` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_2_solving_and_graphing_linear_inequalities` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_2_applications_of_linear_equations_and_inequalities` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_2_absolute_value_equations_and_inequalities` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_3_understanding_functions_and_relations` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_3_function_notation` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_3_graphing_linear_functions_and_lines` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_3_slope_and_rate_of_change` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_3_slope_intercept_point_slope_standard_form` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_3_graphing_inequalities_on_number_line_and_coordinate_plane` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_4_solving_systems_by_graphing` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_4_solving_systems_by_substitution` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_4_solving_systems_by_elimination` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_4_applications_of_systems_of_equations` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_4_systems_of_inequalities_and_their_graphs` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_5_adding_subtracting_multiplying_polynomials` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_5_special_products` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_5_factoring_polynomials` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_5_solving_quadratic_equations_by_factoring` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_6_introduction_to_quadratic_functions` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_6_graphing_quadratic_functions` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_6_vertex_axis_of_symmetry_and_intercepts` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_6_solving_quadratic_equations` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_6_quadratic_formula_and_discriminant` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_7_simplifying_rational_expressions` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_7_multiplying_and_dividing_rational_expressions` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_7_adding_and_subtracting_rational_expressions` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_7_solving_rational_equations` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_7_applications_of_rational_expressions` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_8_simplifying_radicals` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_8_operations_with_radical_expressions` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_8_solving_equations_with_radicals` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_9_laws_of_exponents` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_9_scientific_notation` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_9_exponential_growth_and_decay` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_10_arithmetic_sequences` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_10_geometric_sequences` LIKE `n_1_variables_and_expressions`;

CREATE TABLE `n_11_mean_median_mode` LIKE `n_1_variables_and_expressions`;
CREATE TABLE `n_11_basic_probability` LIKE `n_1_variables_and_expressions`;
