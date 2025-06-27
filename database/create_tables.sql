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


-- 1_ tables
CREATE TABLE `1_antonym` (
  `id` INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` VARCHAR(100) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `question` TEXT NOT NULL,
  `correct_answer` VARCHAR(255) NOT NULL,
  `wrong_answer1` VARCHAR(255) NOT NULL,
  `wrong_answer2` VARCHAR(255) NOT NULL,
  `wrong_answer3` VARCHAR(255) NOT NULL,
  `explanation` TEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `1_causality_or_result_identification` LIKE `1_antonym`;
CREATE TABLE `1_contextual_meaning` LIKE `1_antonym`;
CREATE TABLE `1_definition` LIKE `1_antonym`;
CREATE TABLE `1_field_specific_meaning` LIKE `1_antonym`;
CREATE TABLE `1_literal_vs_figurative_language` LIKE `1_antonym`;
CREATE TABLE `1_metaphor_simile_identification` LIKE `1_antonym`;
CREATE TABLE `1_slang_vs_formal_use` LIKE `1_antonym`;
CREATE TABLE `1_synonym` LIKE `1_antonym`;
CREATE TABLE `1_word_precision` LIKE `1_antonym`;

-- 2_ tables
CREATE TABLE `2_affix_identification` (
  `id` INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` VARCHAR(100) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `question` TEXT NOT NULL,
  `correct_answer` VARCHAR(255) NOT NULL,
  `wrong_answer1` VARCHAR(255) NOT NULL,
  `wrong_answer2` VARCHAR(255) NOT NULL,
  `wrong_answer3` VARCHAR(255) NOT NULL,
  `explanation` TEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `2_pronunciation_challenge` LIKE `2_affix_identification`;
CREATE TABLE `2_root_word` LIKE `2_affix_identification`;
CREATE TABLE `2_word_association` LIKE `2_affix_identification`;
CREATE TABLE `2_word_classification` LIKE `2_affix_identification`;
CREATE TABLE `2_word_family` LIKE `2_affix_identification`;
CREATE TABLE `2_word_formation` LIKE `2_affix_identification`;
CREATE TABLE `2_word_stress_identification` LIKE `2_affix_identification`;
