CREATE TABLE `1_variables_and_expressions` (
  `id` INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` VARCHAR(100) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `question` TEXT NOT NULL,
  `image` VARCHAR(255) DEFAULT NULL, -- image related to the question
  `correct_answer` VARCHAR(255) NOT NULL,
  `wrong_answer1` VARCHAR(255) NOT NULL,
  `wrong_answer2` VARCHAR(255) NOT NULL,
  `wrong_answer3` VARCHAR(255) NOT NULL,
  `explanation` TEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


