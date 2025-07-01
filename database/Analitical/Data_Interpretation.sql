-- 1. BAR CHART
INSERT INTO analytical (category, type, question, chart_data, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES ('Data Interpretation', 'bar', 'Which product sold the most in Q2?', '{ "labels": ["Q1", "Q2", "Q3", "Q4"], "datasets": [{ "label": "Product A", "data": [120, 180, 150, 130], "backgroundColor": "#36A2EB" }] }', 'Q2', 'Q1', 'Q3', 'Q4', 'Product A had the highest sales in Q2 (180 units).', NOW());
















-- 2. LINE CHART
INSERT INTO analytical (category, type, question, chart_data, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES ('Data Interpretation', 'line', 'In which month did the stock value peak?', '{ "labels": ["Jan", "Feb", "Mar", "Apr", "May"], "datasets": [{ "label": "Stock Value", "data": [100, 130, 160, 140, 120], "borderColor": "#FF6384", "fill": false }] }', 'March', 'April', 'February', 'May', 'March had the highest value of 160.', NOW());

-- 3. PIE CHART
INSERT INTO analytical (category, type, question, chart_data, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES ('Data Interpretation', 'pie', 'Which sector holds the largest market share?', '{ "labels": ["Tech", "Healthcare", "Finance"], "datasets": [{ "data": [45, 30, 25], "backgroundColor": ["#FF6384", "#36A2EB", "#FFCE56"] }] }', 'Tech', 'Healthcare', 'Finance', 'Equal', 'Tech has the highest share (45%).', NOW());

-- 4. DOUGHNUT CHART
INSERT INTO analytical (category, type, question, chart_data, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES ('Data Interpretation', 'doughnut', 'Which platform generated the least traffic?', '{ "labels": ["Google", "Facebook", "Twitter", "LinkedIn"], "datasets": [{ "data": [300, 200, 100, 400], "backgroundColor": ["#4BC0C0", "#FF6384", "#FFCE56", "#36A2EB"] }] }', 'Twitter', 'Facebook', 'Google', 'LinkedIn', 'Twitter has the smallest slice (100 visits).', NOW());

-- 5. RADAR CHART
INSERT INTO analytical (category, type, question, chart_data, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES ('Data Interpretation', 'radar', 'Which skill is weakest for Candidate A?', '{ "labels": ["Communication", "Technical", "Leadership", "Teamwork", "Creativity"], "datasets": [{ "label": "Candidate A", "data": [4, 5, 3, 4, 5], "borderColor": "#FF6384" }] }', 'Leadership', 'Technical', 'Creativity', 'Teamwork', 'Leadership has the lowest rating (3).', NOW());

-- 6. POLAR AREA CHART
INSERT INTO analytical (category, type, question, chart_data, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES ('Data Interpretation', 'polarArea', 'Which department received the most funding?', '{ "labels": ["R&D", "Marketing", "HR", "Operations"], "datasets": [{ "data": [400, 300, 200, 500], "backgroundColor": ["#FF6384", "#36A2EB", "#FFCE56", "#4BC0C0"] }] }', 'Operations', 'R&D', 'Marketing', 'HR', 'Operations received the most funding (500).', NOW());

-- 7. SCATTER CHART
INSERT INTO analytical (category, type, question, chart_data, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES ('Data Interpretation', 'scatter', 'Which point has the highest x value?', '{ "datasets": [{ "label": "Measurements", "data": [{"x": 10, "y": 15}, {"x": 20, "y": 10}, {"x": 30, "y": 5}] ,"backgroundColor": "#36A2EB" }] }', '(30,5)', '(20,10)', '(10,15)', '(0,0)', 'Point (30,5) has the highest x value.', NOW());

-- 8. BUBBLE CHART
INSERT INTO analytical (category, type, question, chart_data, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at) VALUES ('Data Interpretation', 'bubble', 'Which bubble represents the largest population?', '{ "datasets": [{ "label": "Countries", "data": [{"x": 20, "y": 30, "r": 10}, {"x": 25, "y": 20, "r": 15}, {"x": 30, "y": 10, "r": 25}] ,"backgroundColor": "#FF6384" }] }', '(30,10,r=25)', '(25,20,r=15)', '(20,30,r=10)', 'None', 'The bubble at (30,10) has the largest radius = 25.', NOW());
