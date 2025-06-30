-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2025 at 09:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `x`
--

-- --------------------------------------------------------

--
-- Table structure for table `analytical`
--

CREATE TABLE `analytical` (
  `id` int(6) UNSIGNED NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `word` varchar(100) NOT NULL,
  `question` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `chart_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`chart_data`)),
  `correct_answer` varchar(255) NOT NULL,
  `wrong_answer1` varchar(255) NOT NULL,
  `wrong_answer2` varchar(255) NOT NULL,
  `wrong_answer3` varchar(255) NOT NULL,
  `explanation` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `analytical`
--

INSERT INTO `analytical` (`id`, `category`, `type`, `word`, `question`, `image`, `chart_data`, `correct_answer`, `wrong_answer1`, `wrong_answer2`, `wrong_answer3`, `explanation`, `created_at`) VALUES
(22, 'Data interpretation', 'Logic', '', 'In which year did car sales exceed bike sales?', NULL, '{\r\n    \"labels\": [\"2015\", \"2016\", \"2017\", \"2018\", \"2019\", \"2020\", \"2021\"],\r\n    \"datasets\": [\r\n      {\r\n        \"label\": \"Car Sales\",\r\n        \"data\": [120, 150, 130, 170, 140, 160, 180]\r\n      },\r\n      {\r\n        \"label\": \"Bike Sales\",\r\n        \"data\": [100, 120, 130, 140, 160, 180, 200]\r\n      }\r\n    ]\r\n  }', '2018', '2015', '2016', '2017', 'In 2018, car sales surpassed bike sales by 30 units.', '2025-06-29 22:30:07'),
(23, 'Data interpretation', 'Logic', '', 'Which year did the revenue for car sales grow the most?', NULL, '{\r\n    \"labels\": [\"2015\", \"2016\", \"2017\", \"2018\", \"2019\"],\r\n    \"datasets\": [\r\n      {\r\n        \"label\": \"Car Revenue\",\r\n        \"data\": [1000, 1100, 1500, 1400, 1300]\r\n      },\r\n      {\r\n        \"label\": \"Bike Revenue\",\r\n        \"data\": [500, 600, 650, 700, 750]\r\n      }\r\n    ]\r\n  }', '2017', '2015', '2018', '2019', 'In 2017, car revenue grew the most, from 1100 to 1500 units.', '2025-06-29 22:30:07'),
(24, 'Data interpretation', 'Logic', '', 'In which year did the gap between car and bike sales peak?', NULL, '{\r\n    \"labels\": [\"2015\", \"2016\", \"2017\", \"2018\", \"2019\"],\r\n    \"datasets\": [\r\n      {\r\n        \"label\": \"Car Sales\",\r\n        \"data\": [200, 220, 210, 250, 270]\r\n      },\r\n      {\r\n        \"label\": \"Bike Sales\",\r\n        \"data\": [150, 170, 160, 180, 210]\r\n      }\r\n    ]\r\n  }', '2018', '2015', '2016', '2020', 'In 2018, the gap between car and bike sales was the largest, with a difference of 70 units.', '2025-06-29 22:30:07'),
(25, 'Data interpretation', 'Logic', '', 'Which year had the highest combined sales of cars and bikes?', NULL, '{\r\n    \"labels\": [\"2015\", \"2016\", \"2017\", \"2018\", \"2019\"],\r\n    \"datasets\": [\r\n      {\r\n        \"label\": \"Car Sales\",\r\n        \"data\": [120, 150, 130, 170, 180]\r\n      },\r\n      {\r\n        \"label\": \"Bike Sales\",\r\n        \"data\": [100, 120, 130, 140, 160]\r\n      }\r\n    ]\r\n  }', '2019', '2017', '2018', '2020', 'In 2019, combined sales of cars and bikes reached 340 units, the highest of all years.', '2025-06-29 22:30:07'),
(26, 'Data Interpretation', 'Non Verbal', '', 'Question', 'question.png', NULL, 'check.jpg', 'wrong.png', 'wrong.png', 'wrong.png', 'explanation', '2025-06-29 22:30:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analytical`
--
ALTER TABLE `analytical`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analytical`
--
ALTER TABLE `analytical`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
