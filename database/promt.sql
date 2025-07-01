
-- delete data
DROP TABLE IF EXISTS `verbal`;
DROP TABLE IF EXISTS `numerical`;
DROP TABLE IF EXISTS `analytical`;
DROP TABLE IF EXISTS `general`;

-- clear data
TRUNCATE TABLE `verbal`;
TRUNCATE TABLE `numerical`;
TRUNCATE TABLE `analytical`;
TRUNCATE TABLE `general`;


-- count 
SELECT COUNT(*) AS total FROM `verbal`;


SELECT COUNT(*) AS total FROM `numerical`;
SELECT COUNT(*) AS total_duplicates FROM (SELECT question FROM numerical GROUP BY question HAVING COUNT(*) > 1) AS duplicates;



SELECT COUNT(*) AS total FROM `analytical`;
SELECT COUNT(*) FROM analytical WHERE category = 'Data interpretation' AND type = 'Bar Chart';


SELECT COUNT(*) AS total FROM `general`;
