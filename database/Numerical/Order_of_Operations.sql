INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES 
('Order of Operations','PEMDAS',NULL,'\\(3 + 6 \\times (4 + 1)\\)','33','45','21','39','\\(4+1=5,\\ 6\\times5=30,\\ 30+3=33\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\(((10 \\div 2)^2 + 1)\\)','26','16','51','36','\\(10\\div2=5,\\ 5^2=25,\\ 25+1=26\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\(4 \\times 2^2 + 6\\)','22','14','18','26','\\(2^2=4,\\ 4\\times4=16,\\ 16+6=22\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\(((5 + 3)^2 \\div 4)\\)','16','8','10','32','\\(5+3=8,\\ 8^2=64,\\ 64\\div4=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\(12 - 2 \\times (4 + 1)\\)','2','8','-2','10','\\(4+1=5,\\ 2\\times5=10,\\ 12-10=2\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\(((9 - 3)^2 + 4)\\)','40','16','36','30','\\(9-3=6,\\ 6^2=36,\\ 36+4=40\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\(7 + 3^2 \\times 2\\)','25','20','18','22','\\(3^2=9,\\ 9\\times2=18,\\ 7+18=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\(5 \\times (3 + 1) + 2^2\\)','24','30','28','18','\\(3+1=4,\\ 5\\times4=20,\\ 2^2=4,\\ 20+4=24\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\(((6 + 2)^2 - 4 \\times 2)\\)','56','64','48','52','\\(6+2=8,\\ 8^2=64,\\ 4\\times2=8,\\ 64-8=56\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\(8 + 12 \\div (3 \\times 2)\\)','10','6','14','4','\\(3\\times2=6,\\ 12\\div6=2,\\ 8+2=10\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES 
('Order of Operations','PEMDAS',NULL,'\\( (2 + 3)^2 - 7 \\)','18','25','16','10','\\(2+3=5,\\ 5^2=25,\\ 25-7=18\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 + (8 \\div 4)^2 \\)','10','12','20','18','\\(8\\div4=2,\\ 2^2=4,\\ 6+4=10\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 - 2)^2 + 9 \\)','34','25','30','49','\\(7-2=5,\\ 5^2=25,\\ 25+9=34\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^3 + 4 \\times 2 \\)','16','20','12','10','\\(2^3=8,\\ 4\\times2=8,\\ 8+8=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 \\div 3 + 1)^2 \\)','16','25','36','12','\\(9\\div3=3,\\ 3+1=4,\\ 4^2=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 - 2^2 + 3 \\)','11','5','9','13','\\(2^2=4,\\ 10-4=6,\\ 6+3=9\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 \\times 3 + 2^3 \\)','31','27','35','23','\\(5\\times3=15,\\ 2^3=8,\\ 15+8=23\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 \\times (2 + 3)^2 \\)','150','81','120','180','\\(2+3=5,\\ 5^2=25,\\ 6\\times25=150\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 - 3)^2 + (2 \\times 5) \\)','35','45','30','25','\\(8-3=5,\\ 5^2=25,\\ 2\\times5=10,\\ 25+10=35\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3^2 + 4^2 \\)','25','49','19','33','\\(3^2=9,\\ 4^2=16,\\ 9+16=25\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES 
('Order of Operations','PEMDAS',NULL,'\\( (4 + 6) \\times 2^2 \\)','40','32','20','16','\\(4+6=10,\\ 2^2=4,\\ 10\\times4=40\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 18 \\div (3 \\times 2) + 7 \\)','10','13','6','9','\\(3\\times2=6,\\ 18\\div6=3,\\ 3+7=10\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (2^2 + 6)^2 \\)','100','64','81','121','\\(2^2=4,\\ 4+6=10,\\ 10^2=100\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 12 - (3^2 - 2) \\)','5','7','4','2','\\(3^2=9,\\ 9-2=7,\\ 12-7=5\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 + 2^2) \\div 2 \\)','6','5','8','4','\\(2^2=4,\\ 8+4=12,\\ 12\\div2=6\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2 + 3 \\times (4^2 - 6) \\)','32','18','20','24','\\(4^2=16,\\ 16-6=10,\\ 3\\times10=30,\\ 30+2=32\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 2)^2 - 9 \\)','40','49','36','25','\\(5+2=7,\\ 7^2=49,\\ 49-9=40\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4 + 6 \\div (2 + 1) \\)','6','8','10','5','\\(2+1=3,\\ 6\\div3=2,\\ 4+2=6\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (3 + 2)^3 \\div 5 \\)','25','30','10','20','\\(3+2=5,\\ 5^3=125,\\ 125\\div5=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 9 + (6^2 \\div 3) \\)','21','27','19','24','\\(6^2=36,\\ 36\\div3=12,\\ 9+12=21\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES 
('Order of Operations','PEMDAS',NULL,'\\( (2 + 3) \\times (4 + 1) \\)','25','20','15','30','\\(2+3=5,\\ 4+1=5,\\ 5\\times5=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6^2 - (4 + 5) \\)','27','35','25','32','\\(6^2=36,\\ 4+5=9,\\ 36-9=27\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 + 3^2 - 2^2 \\)','14','16','10','12','\\(3^2=9,\\ 2^2=4,\\ 7+9=16,\\ 16-4=12\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 \\times (2 + 3^2) \\)','55','45','50','60','\\(3^2=9,\\ 2+9=11,\\ 5\\times11=55\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 + 2)^2 \\div 4 \\)','25','20','30','40','\\(8+2=10,\\ 10^2=100,\\ 100\\div4=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 - 4^2 + 6 \\)','0','2','4','-2','\\(4^2=16,\\ 10-16=-6,\\ -6+6=0\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (3 + 1)^2 + (2^3) \\)','24','20','28','22','\\(3+1=4,\\ 4^2=16,\\ 2^3=8,\\ 16+8=24\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 18 \\div 3 + 2^3 \\)','10','12','14','8','\\(18\\div3=6,\\ 2^3=8,\\ 6+8=14\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 2)^2 - (5 \\times 2) \\)','44','36','40','48','\\(6+2=8,\\ 8^2=64,\\ 5\\times2=10,\\ 64-10=54\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 9 + 3 \\times (2^2) - 1 \\)','20','18','22','16','\\(2^2=4,\\ 3\\times4=12,\\ 9+12=21,\\ 21-1=20\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( 2^3 + 4 \\times 2 \\)','16','12','14','18','\\(2^3 = 8,\\ 4 \\times 2 = 8,\\ 8 + 8 = 16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (3^2 + 5) \\div 2 \\)','7','6','8','9','\\(3^2 = 9,\\ 9 + 5 = 14,\\ 14 \\div 2 = 7\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 20 - (6 + 2)^2 \\)','-44','-36','-40','-32','\\(6 + 2 = 8,\\ 8^2 = 64,\\ 20 - 64 = -44\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 3)^2 + 4 \\times 2 \\)','72','64','80','68','\\(5+3=8,\\ 8^2=64,\\ 4\\times2=8,\\ 64+8=72\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 + 4^2 - 2^3 \\)','18','20','22','16','\\(4^2=16,\\ 2^3=8,\\ 6+16=22,\\ 22-8=14\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 \\div 3)^2 + 5 \\)','14','16','12','11','\\(9\\div3=3,\\ 3^2=9,\\ 9+5=14\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7^2 - (3 + 4) \\)','42','49','40','43','\\(7^2=49,\\ 3+4=7,\\ 49-7=42\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6^2 \\div 3) + 1 \\)','13','11','15','14','\\(6^2=36,\\ 36\\div3=12,\\ 12+1=13\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2 \\times (3 + 2)^2 \\)','50','25','20','45','\\(3+2=5,\\ 5^2=25,\\ 2\\times25=50\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 8 + (2 + 4)^2 - 10 \\)','34','36','32','30','\\(2+4=6,\\ 6^2=36,\\ 8+36=44,\\ 44-10=34\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (4 + 2)^2 - 3^2 \\)','27','36','25','30','\\(4+2=6,\\ 6^2=36,\\ 3^2=9,\\ 36-9=27\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5^2 + 6 \\div 2 \\)','28','30','25','26','\\(5^2=25,\\ 6\\div2=3,\\ 25+3=28\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 \\times (4 + 2)^2 \\)','108','72','96','84','\\(4+2=6,\\ 6^2=36,\\ 3\\times36=108\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 + 1)^2 - 2^3 \\)','56','64','48','60','\\(7+1=8,\\ 8^2=64,\\ 2^3=8,\\ 64-8=56\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 + 2^2 \\times 3 \\)','22','18','16','26','\\(2^2=4,\\ 4\\times3=12,\\ 10+12=22\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 3)^2 + 1 \\)','82','90','81','80','\\(6+3=9,\\ 9^2=81,\\ 81+1=82\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^4 - 3 \\times 2 \\)','10','8','12','6','\\(2^4=16,\\ 3\\times2=6,\\ 16-6=10\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 \\div 2 + 1)^2 \\)','36','25','49','30','\\(8\\div2=4,\\ 4+1=5,\\ 5^2=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 9 + (5 - 2)^2 \\)','18','12','20','15','\\(5-2=3,\\ 3^2=9,\\ 9+9=18\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (2 + 3)^3 \\div 5 \\)','25','27','30','20','\\(2+3=5,\\ 5^3=125,\\ 125\\div5=25\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (5 \\times 2)^2 \\div 5 \\)','20','10','50','25','\\(5\\times2=10,\\ 10^2=100,\\ 100\\div5=20\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 + 3^2 \\times 2 \\)','24','30','21','27','\\(3^2=9,\\ 9\\times2=18,\\ 6+18=24\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^3 + 5 \\times 3 \\)','23','17','30','20','\\(2^3=8,\\ 5\\times3=15,\\ 8+15=23\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 - 4)^2 + 6 \\)','31','25','30','36','\\(9-4=5,\\ 5^2=25,\\ 25+6=31\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 12 \\div (2 + 4) + 7 \\)','9','11','10','8','\\(2+4=6,\\ 12\\div6=2,\\ 2+7=9\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6^2 - 9) \\div 3 \\)','11','9','10','12','\\(6^2=36,\\ 36-9=27,\\ 27\\div3=9\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 15 - (2 + 3)^2 \\)','-10','0','5','-5','\\(2+3=5,\\ 5^2=25,\\ 15-25=-10\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 \\times (2^2 + 1) \\)','15','12','9','18','\\(2^2=4,\\ 4+1=5,\\ 3\\times5=15\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 + 4) \\div 2 + 3^2 \\)','19','18','17','21','\\(8+4=12,\\ 12\\div2=6,\\ 3^2=9,\\ 6+9=15\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 + 2^3 \\times 2 \\)','23','15','18','20','\\(2^3=8,\\ 8\\times2=16,\\ 7+16=23\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (5 \\times 2)^2 \\div 5 \\)','20','10','50','25','\\(5\\times2=10,\\ 10^2=100,\\ 100\\div5=20\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 + 3^2 \\times 2 \\)','24','30','21','27','\\(3^2=9,\\ 9\\times2=18,\\ 6+18=24\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^3 + 5 \\times 3 \\)','23','17','30','20','\\(2^3=8,\\ 5\\times3=15,\\ 8+15=23\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 - 4)^2 + 6 \\)','31','25','30','36','\\(9-4=5,\\ 5^2=25,\\ 25+6=31\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 12 \\div (2 + 4) + 7 \\)','9','11','10','8','\\(2+4=6,\\ 12\\div6=2,\\ 2+7=9\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6^2 - 9) \\div 3 \\)','11','9','10','12','\\(6^2=36,\\ 36-9=27,\\ 27\\div3=9\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 15 - (2 + 3)^2 \\)','-10','0','5','-5','\\(2+3=5,\\ 5^2=25,\\ 15-25=-10\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 \\times (2^2 + 1) \\)','15','12','9','18','\\(2^2=4,\\ 4+1=5,\\ 3\\times5=15\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 + 4) \\div 2 + 3^2 \\)','19','18','17','21','\\(8+4=12,\\ 12\\div2=6,\\ 3^2=9,\\ 6+9=15\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 + 2^3 \\times 2 \\)','23','15','18','20','\\(2^3=8,\\ 8\\times2=16,\\ 7+16=23\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( 2 + 3 \\times (4 + 1) \\)','17','25','11','21','\\(4+1=5,\\ 3\\times5=15,\\ 2+15=17\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 + 1)^2 - 3^2 \\)','55','64','45','49','\\(7+1=8,\\ 8^2=64,\\ 3^2=9,\\ 64-9=55\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 + 2^2 \\times 3 \\)','22','18','26','16','\\(2^2=4,\\ 4\\times3=12,\\ 10+12=22\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 3) \\div 3 + 2^2 \\)','7','6','5','8','\\(6+3=9,\\ 9\\div3=3,\\ 2^2=4,\\ 3+4=7\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5^2 - 3 \\times 2 \\)','19','25','16','20','\\(5^2=25,\\ 3\\times2=6,\\ 25-6=19\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 + (4^2 - 8) \\)','11','13','9','8','\\(4^2=16,\\ 16-8=8,\\ 3+8=11\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (2 + 6)^2 \\div 4 \\)','16','8','12','20','\\(2+6=8,\\ 8^2=64,\\ 64\\div4=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 9 + 3 \\times 2^2 \\)','21','18','15','12','\\(2^2=4,\\ 3\\times4=12,\\ 9+12=21\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 14 - (2^2 + 6) \\)','4','6','2','8','\\(2^2=4,\\ 4+6=10,\\ 14-10=4\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (3 + 5)^2 - 2^3 \\)','56','64','49','58','\\(3+5=8,\\ 8^2=64,\\ 2^3=8,\\ 64-8=56\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( 6^2 \\div 3 + 1 \\)','13','15','11','12','\\(6^2=36,\\ 36\\div3=12,\\ 12+1=13\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 20 - 2^3 \\times 2 \\)','4','12','8','6','\\(2^3=8,\\ 8\\times2=16,\\ 20-16=4\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3^2 + (2 + 4) \\)','15','13','17','14','\\(3^2=9,\\ 2+4=6,\\ 9+6=15\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (10 - 2)^2 - 4^2 \\)','36','64','48','40','\\(10-2=8,\\ 8^2=64,\\ 4^2=16,\\ 64-16=48\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 + 2^3 \\times 2 \\)','21','19','17','23','\\(2^3=8,\\ 8\\times2=16,\\ 5+16=21\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 - 4)^2 + 1 \\)','26','30','24','36','\\(9-4=5,\\ 5^2=25,\\ 25+1=26\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 8 + 6 \\div 3 \\times 2 \\)','12','10','14','11','\\(6\\div3=2,\\ 2\\times2=4,\\ 8+4=12\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 + 2)^2 - 3 \\)','78','81','72','79','\\(7+2=9,\\ 9^2=81,\\ 81-3=78\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 - 3 + 2^2 \\)','11','13','9','8','\\(2^2=4,\\ 10-3=7,\\ 7+4=11\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2 + 3 \\times 4^2 \\)','50','30','40','42','\\(4^2=16,\\ 3\\times16=48,\\ 2+48=50\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (4 + 6)^2 \\div 2 \\)','50','100','40','25','\\(4+6=10,\\ 10^2=100,\\ 100\\div2=50\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 + 2 \\times 3^2 \\)','25','21','23','19','\\(3^2=9,\\ 2\\times9=18,\\ 7+18=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 - 3)^3 \\)','125','64','100','27','\\(8-3=5,\\ 5^3=125\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^4 + 3 \\times 2 \\)','22','26','18','16','\\(2^4=16,\\ 3\\times2=6,\\ 16+6=22\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 + 1)^2 - 4^2 \\)','64','60','72','56','\\(9+1=10,\\ 10^2=100,\\ 4^2=16,\\ 100-16=84\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 \\times (6 + 2)^2 \\)','320','240','400','300','\\(6+2=8,\\ 8^2=64,\\ 5\\times64=320\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7^2 - 5^2) + 4 \\)','28','30','24','20','\\(7^2=49,\\ 5^2=25,\\ 49-25=24,\\ 24+4=28\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (12 \\div 4)^3 + 1 \\)','28','27','30','25','\\(12\\div4=3,\\ 3^3=27,\\ 27+1=28\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 \\times (2 + 3)^2 \\)','150','180','120','135','\\(2+3=5,\\ 5^2=25,\\ 6\\times25=150\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (3 + 1)^2 + 2^3 \\)','24','18','20','22','\\(3+1=4,\\ 4^2=16,\\ 2^3=8,\\ 16+8=24\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (6 + 3)^2 - 5 \\times 3 \\)','66','81','69','60','\\(6+3=9,\\ 9^2=81,\\ 5\\times3=15,\\ 81-15=66\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^3 + 3^2 \\times 2 \\)','28','18','24','20','\\(2^3=8,\\ 3^2=9,\\ 9\\times2=18,\\ 8+18=26\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (10 - 4)^2 + 6 \\)','42','36','56','50','\\(10-4=6,\\ 6^2=36,\\ 36+6=42\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4^2 + 5^2 \\)','41','45','36','40','\\(4^2=16,\\ 5^2=25,\\ 16+25=41\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 2) \\times (3 + 1) \\)','28','24','30','32','\\(5+2=7,\\ 3+1=4,\\ 7\\times4=28\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 + 4^2 - 2 \\)','17','19','14','21','\\(4^2=16,\\ 3+16=19,\\ 19-2=17\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2 + (6^2 - 4^2) \\)','20','30','18','22','\\(6^2=36,\\ 4^2=16,\\ 36-16=20,\\ 2+20=22\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 + 3) \\div (6 - 3) \\)','4','3','5','6','\\(9+3=12,\\ 6-3=3,\\ 12\\div3=4\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (2 + 3)^2 + (4 - 1)^2 \\)','34','25','30','40','\\(2+3=5,\\ 5^2=25,\\ 4-1=3,\\ 3^2=9,\\ 25+9=34\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 \\times (2^2 + 3^2) \\)','65','45','50','55','\\(2^2=4,\\ 3^2=9,\\ 4+9=13,\\ 5\\times13=65\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( 7 + (3^2 \\times 2) \\)','25','20','22','24','\\(3^2=9,\\ 9\\times2=18,\\ 7+18=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6^2 - (4 + 2)^2 \\)','0','4','8','12','\\(6^2=36,\\ 4+2=6,\\ 6^2=36,\\ 36-36=0\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2 + 3 \\times (4^2 - 6) \\)','38','30','36','42','\\(4^2=16,\\ 16-6=10,\\ 3\\times10=30,\\ 2+30=32\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 + 2)^2 \\div 4 \\)','25','20','16','36','\\(8+2=10,\\ 10^2=100,\\ 100\\div4=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 12 - (3 + 1)^2 \\)','-4','0','4','-8','\\(3+1=4,\\ 4^2=16,\\ 12-16=-4\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4^3 \\div 2^2 \\)','8','16','6','12','\\(4^3=64,\\ 2^2=4,\\ 64\\div4=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 5)^2 - 3^3 \\)','91','81','89','93','\\(5+5=10,\\ 10^2=100,\\ 3^3=27,\\ 100-27=73\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 + 3^3 \\div 3 \\)','19','21','13','17','\\(3^3=27,\\ 27\\div3=9,\\ 10+9=19\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 - 2)^2 + 2^2 \\)','29','25','30','27','\\(7-2=5,\\ 5^2=25,\\ 2^2=4,\\ 25+4=29\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (3 + 5)^2 - (6 + 2) \\)','56','49','60','52','\\(3+5=8,\\ 8^2=64,\\ 6+2=8,\\ 64-8=56\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( 4 \\times (3 + 5) - 2^3 \\)','24','26','28','22','\\(3+5=8,\\ 4\\times8=32,\\ 2^3=8,\\ 32-8=24\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 2)^2 \\div (4 + 4) \\)','8','10','6','12','\\(6+2=8,\\ 8^2=64,\\ 4+4=8,\\ 64\\div8=8\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 + 3 \\times 2^2 \\)','17','19','15','21','\\(2^2=4,\\ 3\\times4=12,\\ 5+12=17\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 - 5)^2 + 2 \\)','18','20','16','22','\\(9-5=4,\\ 4^2=16,\\ 16+2=18\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 - 2^3 + 1 \\)','3','5','7','1','\\(2^3=8,\\ 10-8=2,\\ 2+1=3\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (4 + 1)^3 \\div 5 \\)','25','20','30','15','\\(4+1=5,\\ 5^3=125,\\ 125\\div5=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 \\times 2^2 + 4 \\)','16','14','18','12','\\(2^2=4,\\ 3\\times4=12,\\ 12+4=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 + 3) \\times (2 + 1) \\)','30','27','24','33','\\(7+3=10,\\ 2+1=3,\\ 10\\times3=30\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 8 + 4 \\times 3 - 2^3 \\)','16','20','18','14','\\(4\\times3=12,\\ 2^3=8,\\ 8+12=20,\\ 20-8=12\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 3)^2 - (2^2 + 3) \\)','54','56','52','50','\\(5+3=8,\\ 8^2=64,\\ 2^2=4,\\ 4+3=7,\\ 64-7=57\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( 3 + 6 \\times (2^2) \\)','27','21','24','30','\\(2^2=4,\\ 6\\times4=24,\\ 3+24=27\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 1)^2 - 3^2 \\)','27','36','33','30','\\(5+1=6,\\ 6^2=36,\\ 3^2=9,\\ 36-9=27\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 8 \\div 2 + 3^2 \\)','13','16','11','14','\\(8\\div2=4,\\ 3^2=9,\\ 4+9=13\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^3 \\times (1 + 2) \\)','24','18','20','30','\\(2^3=8,\\ 1+2=3,\\ 8\\times3=24\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (4 + 4)^2 \\div 8 \\)','8','12','6','10','\\(4+4=8,\\ 8^2=64,\\ 64\\div8=8\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 \\times 3 - 2^3 \\)','13','15','17','11','\\(7\\times3=21,\\ 2^3=8,\\ 21-8=13\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 - 1)^2 + 2^2 \\)','29','25','30','28','\\(6-1=5,\\ 5^2=25,\\ 2^2=4,\\ 25+4=29\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 + 2 \\times 3^2 \\)','28','24','30','26','\\(3^2=9,\\ 2\\times9=18,\\ 10+18=28\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (3 + 5) \\times 2^2 \\)','32','28','30','36','\\(3+5=8,\\ 2^2=4,\\ 8\\times4=32\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 9 - 3 \\times (2 + 1) \\)','0','3','6','-3','\\(2+1=3,\\ 3\\times3=9,\\ 9-9=0\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (5 + 3)^2 \\div 4 \\)','16','12','18','20','\\(5+3=8,\\ 8^2=64,\\ 64\\div4=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 + 2 \\times 3^2 \\)','24','22','26','20','\\(3^2=9,\\ 2\\times9=18,\\ 6+18=24\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 - 2)^3 - 3^2 \\)','98','100','90','102','\\(7-2=5,\\ 5^3=125,\\ 3^2=9,\\ 125-27=98\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 - 4 \\times 2^2 \\)','2','6','4','8','\\(2^2=4,\\ 4\\times4=16,\\ 10-16=-6\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3^3 + 2 \\times 4 \\)','35','32','28','30','\\(3^3=27,\\ 2\\times4=8,\\ 27+8=35\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 + 1)^2 - 5^2 \\)','75','70','80','85','\\(9+1=10,\\ 10^2=100,\\ 5^2=25,\\ 100-25=75\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2 \\times (3 + 4)^2 \\)','98','70','84','96','\\(3+4=7,\\ 7^2=49,\\ 2\\times49=98\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 2) \\times (5 - 3) \\)','16','18','20','14','\\(6+2=8,\\ 5-3=2,\\ 8\\times2=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4^2 + 3^3 \\)','43','45','39','40','\\(4^2=16,\\ 3^3=27,\\ 16+27=43\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (10 - 3)^2 + 1 \\)','50','56','45','52','\\(10-3=7,\\ 7^2=49,\\ 49+1=50\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (8 - 3)^2 + 4 \\times 2 \\)','33','36','30','28','\\(8-3=5,\\ 5^2=25,\\ 4\\times2=8,\\ 25+8=33\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^3 + (3 + 4)^2 \\)','57','50','60','63','\\(2^3=8,\\ 3+4=7,\\ 7^2=49,\\ 8+49=57\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 \\times 3^2 - 4 \\)','41','45','39','43','\\(3^2=9,\\ 5\\times9=45,\\ 45-4=41\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 1)^2 + 2^2 \\)','53','51','55','56','\\(6+1=7,\\ 7^2=49,\\ 2^2=4,\\ 49+4=53\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 9 + 3 \\times (4 - 1) \\)','18','21','15','20','\\(4-1=3,\\ 3\\times3=9,\\ 9+9=18\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (10 \\div 2)^3 - 5 \\)','35','40','45','30','\\(10\\div2=5,\\ 5^3=125,\\ 125-5=120\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 + 2^3 \\times 3 \\)','31','29','27','33','\\(2^3=8,\\ 8\\times3=24,\\ 7+24=31\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (3 + 5)^2 \\div 4 \\)','16','18','14','20','\\(3+5=8,\\ 8^2=64,\\ 64\\div4=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2 \\times (4 + 3)^2 - 1 \\)','97','99','95','90','\\(4+3=7,\\ 7^2=49,\\ 2\\times49=98,\\ 98-1=97\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 2)^3 \\div 7 \\)','49','50','51','48','\\(5+2=7,\\ 7^3=343,\\ 343\\div7=49\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( 6 \\times (2^2 + 3) \\)','42','36','40','48','\\(2^2=4,\\ 4+3=7,\\ 6\\times7=42\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (9 - 5)^2 + (3 + 1)^2 \\)','40','36','44','38','\\(9-5=4,\\ 4^2=16,\\ 3+1=4,\\ 4^2=16,\\ 16+16=32\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5^2 - 3^2 + 4 \\)','30','32','28','26','\\(5^2=25,\\ 3^2=9,\\ 25-9=16,\\ 16+4=20\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^3 \\times (5 - 3)^2 \\)','32','24','28','36','\\(2^3=8,\\ 5-3=2,\\ 2^2=4,\\ 8\\times4=32\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 + 3)^2 \\div 5 \\)','20','18','22','24','\\(7+3=10,\\ 10^2=100,\\ 100\\div5=20\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4 + 3 \\times 2^2 \\)','16','18','14','20','\\(2^2=4,\\ 3\\times4=12,\\ 4+12=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 - 2)^3 - 3^2 \\)','52','50','54','56','\\(6-2=4,\\ 4^3=64,\\ 3^2=9,\\ 64-9=55\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 8 \\div 4 + 3^2 \\)','11','13','9','10','\\(8\\div4=2,\\ 3^2=9,\\ 2+9=11\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 \\times (2 + 3)^2 \\)','125','100','115','110','\\(2+3=5,\\ 5^2=25,\\ 5\\times25=125\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (3 + 4)^3 \\div 7 \\)','49','50','47','45','\\(3+4=7,\\ 7^3=343,\\ 343\\div7=49\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (4 + 3)^2 - 5^2 \\)','24','28','20','26','\\(4+3=7,\\ 7^2=49,\\ 5^2=25,\\ 49-25=24\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 \\times 2^3 + 1 \\)','25','23','21','27','\\(2^3=8,\\ 3\\times8=24,\\ 24+1=25\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (10 - 3)^2 \\div 7 \\)','7','10','6','8','\\(10-3=7,\\ 7^2=49,\\ 49\\div7=7\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 8 + 4 \\times 3 - 2^3 \\)','16','20','14','18','\\(4\\times3=12,\\ 2^3=8,\\ 8+12=20,\\ 20-8=12\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 1)^3 - 4^2 \\)','176','150','200','180','\\(5+1=6,\\ 6^3=216,\\ 4^2=16,\\ 216-16=200\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2 \\times (3 + 4)^2 + 1 \\)','99','100','97','95','\\(3+4=7,\\ 7^2=49,\\ 2\\times49=98,\\ 98+1=99\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 - 2)^3 + 2^2 \\)','132','140','124','128','\\(7-2=5,\\ 5^3=125,\\ 2^2=4,\\ 125+4=129\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3^3 - (4 + 2)^2 \\)','-7','5','-5','-3','\\(3^3=27,\\ 4+2=6,\\ 6^2=36,\\ 27-36=-9\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 \\times (5 - 3)^2 - 4 \\)','20','16','24','18','\\(5-3=2,\\ 2^2=4,\\ 6\\times4=24,\\ 24-4=20\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (2 + 4)^3 \\div 8 \\)','27','30','24','25','\\(2+4=6,\\ 6^3=216,\\ 216\\div8=27\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (3 + 6)^2 - 4^3 \\)','17','25','19','21','\\(3+6=9,\\ 9^2=81,\\ 4^3=64,\\ 81-64=17\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^4 + 3^2 \\times 2 \\)','28','30','26','24','\\(2^4=16,\\ 3^2=9,\\ 9\\times2=18,\\ 16+18=34\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 3)^2 \\div 8 + 2^3 \\)','18','20','16','22','\\(5+3=8,\\ 8^2=64,\\ 64\\div8=8,\\ 2^3=8,\\ 8+8=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 9 - 2 \\times 3^2 \\)','-9','-7','-11','-5','\\(3^2=9,\\ 2\\times9=18,\\ 9-18=-9\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 2)^2 - 5^2 \\)','39','41','35','45','\\(6+2=8,\\ 8^2=64,\\ 5^2=25,\\ 64-25=39\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4 \\times 3^2 + 2 \\)','38','34','36','40','\\(3^2=9,\\ 4\\times9=36,\\ 36+2=38\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 - 4)^3 + 1 \\)','28','30','26','24','\\(7-4=3,\\ 3^3=27,\\ 27+1=28\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5^2 - 2 \\times 3^2 \\)','7','9','5','11','\\(5^2=25,\\ 3^2=9,\\ 2\\times9=18,\\ 25-18=7\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 + 2)^2 \\div (5 - 3) \\)','50','40','45','55','\\(8+2=10,\\ 10^2=100,\\ 5-3=2,\\ 100\\div2=50\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 + 4 \\times 2^3 \\)','35','31','29','33','\\(2^3=8,\\ 4\\times8=32,\\ 3+32=35\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (9 - 6)^3 + 2^2 \\)','30','28','32','34','\\(9-6=3,\\ 3^3=27,\\ 2^2=4,\\ 27+4=31\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 \\times (3 + 2)^2 - 4^3 \\)','61','65','57','69','\\(3+2=5,\\ 5^2=25,\\ 5\\times25=125,\\ 4^3=64,\\ 125-64=61\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6^2 \\div (4 - 2) + 3 \\)','21','18','24','27','\\(6^2=36,\\ 4-2=2,\\ 36\\div2=18,\\ 18+3=21\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 + 1)^2 - (5 + 3) \\)','56','58','54','60','\\(7+1=8,\\ 8^2=64,\\ 5+3=8,\\ 64-8=56\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4 \\times 3^2 + 5 \\)','41','39','43','45','\\(3^2=9,\\ 4\\times9=36,\\ 36+5=41\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 - 1)^3 - 3^2 \\)','101','105','97','103','\\(6-1=5,\\ 5^3=125,\\ 3^2=9,\\ 125-9=116\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^3 + 3 \\times 4^2 \\)','50','48','52','46','\\(2^3=8,\\ 4^2=16,\\ 3\\times16=48,\\ 8+48=56\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 3)^2 \\div (2 + 2) \\)','16','18','20','14','\\(5+3=8,\\ 8^2=64,\\ 2+2=4,\\ 64\\div4=16\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 \\times (4 - 2)^2 + 1 \\)','29','27','31','33','\\(4-2=2,\\ 2^2=4,\\ 7\\times4=28,\\ 28+1=29\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 + 6 \\times (5 - 3)^2 \\)','27','25','29','31','\\(5-3=2,\\ 2^2=4,\\ 6\\times4=24,\\ 3+24=27\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (2 + 5)^2 - 3^3 \\)','16','18','14','20','\\(2+5=7,\\ 7^2=49,\\ 3^3=27,\\ 49-27=22\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4 \\times (6 - 3)^2 + 2 \\)','38','36','40','42','\\(6-3=3,\\ 3^2=9,\\ 4\\times9=36,\\ 36+2=38\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 10 - 2^3 + 4 \\)','6','8','4','10','\\(2^3=8,\\ 10-8=2,\\ 2+4=6\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 + 3)^2 \\div (5 - 2) \\)','33','30','36','27','\\(7+3=10,\\ 10^2=100,\\ 5-2=3,\\ 100\\div3=33\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 \\times 4^2 - 5 \\)','43','45','41','39','\\(4^2=16,\\ 3\\times16=48,\\ 48-5=43\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 - 2)^3 + 1 \\)','65','67','63','69','\\(6-2=4,\\ 4^3=64,\\ 64+1=65\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 8 + 3 \\times 2^2 \\)','20','22','18','16','\\(2^2=4,\\ 3\\times4=12,\\ 8+12=20\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 2)^2 - 4^2 \\)','33','35','31','29','\\(5+2=7,\\ 7^2=49,\\ 4^2=16,\\ 49-16=33\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 \\times (3 + 1)^2 \\)','112','108','116','120','\\(3+1=4,\\ 4^2=16,\\ 7\\times16=112\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^5 - (4 \\times 3) \\)','20','24','18','22','\\(2^5=32,\\ 4\\times3=12,\\ 32-12=20\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (4 + 5)^2 - (3 + 2)^2 \\)','56','50','60','52','\\(4+5=9,\\ 3+2=5,\\ 9^2=81,\\ 5^2=25,\\ 81-25=56\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3 \\times (2^3 + 1) \\)','27','25','29','31','\\(2^3=8,\\ 8+1=9,\\ 3\\times9=27\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 - 3)^3 + 2^2 \\)','70','68','72','74','\\(7-3=4,\\ 4^3=64,\\ 2^2=4,\\ 64+4=68\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5^2 + 3 \\times 2^2 \\)','37','35','39','41','\\(5^2=25,\\ 2^2=4,\\ 3\\times4=12,\\ 25+12=37\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 2) \\times (5 - 3)^2 \\)','32','30','34','28','\\(6+2=8,\\ 5-3=2,\\ 2^2=4,\\ 8\\times4=32\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4 + 3^3 - 5 \\)','26','28','24','22','\\(3^3=27,\\ 4+27=31,\\ 31-5=26\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 - 4)^2 + 2^2 \\)','20','22','18','24','\\(8-4=4,\\ 4^2=16,\\ 2^2=4,\\ 16+4=20\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^4 - (3 + 1)^2 \\)','0','4','-2','2','\\(2^4=16,\\ 3+1=4,\\ 4^2=16,\\ 16-16=0\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 \\times 3 - 2^3 \\)','10','14','12','8','\\(6\\times3=18,\\ 2^3=8,\\ 18-8=10\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 1)^2 + 3^2 \\)','45','47','43','41','\\(5+1=6,\\ 6^2=36,\\ 3^2=9,\\ 36+9=45\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( 3 \\times (4 + 2)^2 - 5^3 \\)','13','15','11','17','\\(4+2=6,\\ 6^2=36,\\ 5^3=125,\\ 3\\times36=108,\\ 108-125= -17\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 - 4)^3 + 2^3 \\)','36','34','38','40','\\(7-4=3,\\ 3^3=27,\\ 2^3=8,\\ 27+8=35\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5^2 - 4 \\times 3 \\)','13','15','11','17','\\(5^2=25,\\ 4\\times3=12,\\ 25-12=13\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 6 \\times (2 + 1)^2 + 4 \\)','58','56','60','54','\\(2+1=3,\\ 3^2=9,\\ 6\\times9=54,\\ 54+4=58\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 8 + 3^3 - 7 \\)','28','26','30','24','\\(3^3=27,\\ 8+27=35,\\ 35-7=28\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (4 + 5)^2 \\div 3 \\)','27','30','24','33','\\(4+5=9,\\ 9^2=81,\\ 81\\div3=27\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^5 - 10 \\times 2 \\)','-6','-8','-4','-2','\\(2^5=32,\\ 10\\times2=20,\\ 32-20=12\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 2) \\times (4 - 1) \\)','24','22','26','28','\\(6+2=8,\\ 4-1=3,\\ 8\\times3=24\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 + 3 \\times 2^2 \\)','19','17','21','23','\\(2^2=4,\\ 3\\times4=12,\\ 7+12=19\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 - 3)^3 + 4 \\)','12','14','10','16','\\(5-3=2,\\ 2^3=8,\\ 8+4=12\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( 3^3 - (2 + 4)^2 \\)','-27','-25','-29','-23','\\(3^3=27,\\ 2+4=6,\\ 6^2=36,\\ 27-36=-9\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4 \\times (3^2 + 1) \\)','40','36','44','38','\\(3^2=9,\\ 9+1=10,\\ 4\\times10=40\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 1)^2 - 3^3 \\)','-1','1','-3','3','\\(5+1=6,\\ 6^2=36,\\ 3^3=27,\\ 36-27=9\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^4 + 4 \\times 3 \\)','40','36','44','38','\\(2^4=16,\\ 4\\times3=12,\\ 16+12=28\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 - 1)^2 + 2^3 \\)','44','46','42','48','\\(7-1=6,\\ 6^2=36,\\ 2^3=8,\\ 36+8=44\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 5 \\times 3^2 - 6 \\)','39','41','37','35','\\(3^2=9,\\ 5\\times9=45,\\ 45-6=39\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 + 2)^2 \\div 8 + 3 \\)','14','16','12','18','\\(6+2=8,\\ 8^2=64,\\ 64\\div8=8,\\ 8+3=11\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 + 2 \\times (3^2 - 1) \\)','33','31','35','29','\\(3^2=9,\\ 9-1=8,\\ 2\\times8=16,\\ 7+16=23\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (4 + 3)^3 \\div 7 - 1 \\)','48','46','50','52','\\(4+3=7,\\ 7^3=343,\\ 343\\div7=49,\\ 49-1=48\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^3 + (5 - 1)^2 \\)','20','18','22','24','\\(2^3=8,\\ 5-1=4,\\ 4^2=16,\\ 8+16=24\\)',NOW());

INSERT INTO numerical (category, type, word, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES
('Order of Operations','PEMDAS',NULL,'\\( (3 + 5)^2 - (4 + 1)^2 \\)','24','26','22','28','\\(3+5=8,\\ 8^2=64,\\ 4+1=5,\\ 5^2=25,\\ 64-25=39\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4 \\times 2^3 + 3 \\)','35','33','37','31','\\(2^3=8,\\ 4\\times8=32,\\ 32+3=35\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (6 - 2)^3 - 4^2 \\)','48','50','44','46','\\(6-2=4,\\ 4^3=64,\\ 4^2=16,\\ 64-16=48\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 7 + 3 \\times (2^2 + 1) \\)','28','26','30','24','\\(2^2=4,\\ 4+1=5,\\ 3\\times5=15,\\ 7+15=22\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (5 + 3)^2 \\div 2 + 4 \\)','36','34','38','40','\\(5+3=8,\\ 8^2=64,\\ 64\\div2=32,\\ 32+4=36\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 2^4 + 3 \\times 5 \\)','37','35','39','41','\\(2^4=16,\\ 3\\times5=15,\\ 16+15=31\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (8 - 3)^2 - 2^3 \\)','17','15','19','21','\\(8-3=5,\\ 5^2=25,\\ 2^3=8,\\ 25-8=17\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 4 \\times (5 + 1)^2 - 10 \\)','134','130','138','140','\\(5+1=6,\\ 6^2=36,\\ 4\\times36=144,\\ 144-10=134\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( 3^3 + (2 \\times 4)^2 \\)','91','89','93','95','\\(3^3=27,\\ 2\\times4=8,\\ 8^2=64,\\ 27+64=91\\)',NOW()),
('Order of Operations','PEMDAS',NULL,'\\( (7 + 2)^2 \\div 3 - 5 \\)','22','24','20','26','\\(7+2=9,\\ 9^2=81,\\ 81\\div3=27,\\ 27-5=22\\)',NOW());


