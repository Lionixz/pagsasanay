CREATE TABLE `user` (
  `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `password_hash` VARCHAR(255) NOT NULL,
  `reset_token_hash` VARCHAR(64) DEFAULT NULL,
  `reset_token_expires_at` DATETIME DEFAULT NULL,
  `account_activation_hash` VARCHAR(64) DEFAULT NULL,
  UNIQUE (`reset_token_hash`),
  UNIQUE (`account_activation_hash`)
);