
-- Clear data
TRUNCATE TABLE `1_antonym`;
TRUNCATE TABLE `1_causality_or_result_identification`;
TRUNCATE TABLE `1_contextual_meaning`;



-- count duplicate
SELECT word, COUNT(*) AS count FROM `1_antonym` GROUP BY word HAVING COUNT(*) > 1;
SELECT word, COUNT(*) AS count FROM `1_causality_or_result_identification` GROUP BY word HAVING COUNT(*) > 1;
SELECT word, COUNT(*) AS count FROM `1_contextual_meaning` GROUP BY word HAVING COUNT(*) > 1;



-- Delete duplicate
DELETE FROM `1_antonym` WHERE id NOT IN (SELECT MIN(id) FROM `1_antonym` GROUP BY word);
DELETE FROM `1_causality_or_result_identification` WHERE id NOT IN (SELECT MIN(id) FROM `1_causality_or_result_identification` GROUP BY word);
DELETE FROM `1_contextual_meaning` WHERE id NOT IN (SELECT MIN(id) FROM `1_contextual_meaning` GROUP BY word);
