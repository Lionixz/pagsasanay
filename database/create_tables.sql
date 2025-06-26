-- C:/xampp/htdocs/x/database/create_tables.sql;

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

CREATE TABLE `verbalability` (
  `id` INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` VARCHAR(100) NOT NULL,  -- Added column for the word
  `type` VARCHAR(50) NOT NULL,
  `question` TEXT NOT NULL,
  `correct_answer` VARCHAR(255) NOT NULL,
  `wrong_answer1` VARCHAR(255) NOT NULL,
  `wrong_answer2` VARCHAR(255) NOT NULL,
  `wrong_answer3` VARCHAR(255) NOT NULL,
  `explanation` TEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

