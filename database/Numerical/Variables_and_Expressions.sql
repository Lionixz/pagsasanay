INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Fraction',
  'What is the simplified form of the expression: \\( \\frac{2x}{4} \\)?',
  NULL, 'x/2', '2x', '4x', 'x/4',
  'Divide both numerator and denominator by 2: \\( \\frac{2x}{4} = \\frac{x}{2} \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Exponent',
  'Which expression means \"x squared plus 5\"?',
  NULL, 'x^2 + 5', 'x + 5', '2x + 5', 'x^5',
  '“x squared” is written as \\( x^2 \\), so the expression is \\( x^2 + 5 \\).', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Square Root',
  'What is the simplified form of \\( \\sqrt{49x^2} \\)?',
  NULL, '7x', '49x', 'x\\sqrt{49}', '14x',
  'Since \\( \\sqrt{49x^2} = \\sqrt{49} \\cdot \\sqrt{x^2} = 7x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify',
  'Simplify the expression: \\( 3x + 4 - 2x \\)',
  NULL, 'x + 4', 'x - 4', '5x', 'x + 2',
  'Combine like terms: \\( 3x - 2x = x \\), so the answer is \\( x + 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate',
  'Evaluate \\( 2x^2 \\) when \\( x = 3 \\)',
  NULL, '18', '12', '9', '6',
  'First square x: \\( x^2 = 9 \\), then multiply by 2: \\( 2 \\cdot 9 = 18 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Distributive Property',
  'Apply the distributive property: \\( 3(x + 2) \\)',
  NULL, '3x + 6', '3x + 2', 'x + 6', '3x + 5',
  'Distribute 3 to both terms: \\( 3 \\cdot x + 3 \\cdot 2 = 3x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Like Terms',
  'Simplify: \\( 4x + 5 + 3x - 2 \\)',
  NULL, '7x + 3', '7x + 7', 'x + 3', 'x + 7',
  'Combine like terms: \\( 4x + 3x = 7x \\), \\( 5 - 2 = 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Constant',
  'What is the constant in the expression \\( 6x + 4 \\)?',
  NULL, '4', '6', 'x', '0',
  'The constant is the term without a variable, which is 4.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Meaning',
  'Which expression represents \"twice the sum of x and 5\"?',
  NULL, '2(x + 5)', '2x + 5', 'x + 10', 'x + 5',
  '\"Twice the sum\" means multiply the quantity: \\( 2(x + 5) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitute',
  'Find the value of \\( x^2 - 2x + 1 \\) when \\( x = 3 \\)',
  NULL, '4', '10', '3', '1',
  'Substitute: \\( 3^2 - 2(3) + 1 = 9 - 6 + 1 = 4 \\)', NOW()
);



INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Comparison',
  'Which of the following expressions is equivalent to \\( 2(x + 3) \\)?',
  NULL, '2x + 6', '2x + 3', 'x + 6', '2x + 9',
  'Distribute: \\( 2 \\cdot x + 2 \\cdot 3 = 2x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Nested Expression',
  'Simplify: \\( 2[3x - (2x - 1)] \\)',
  NULL, '2x + 2', 'x + 1', '4x - 1', '6x - 1',
  'Inside parentheses: \\( 3x - (2x - 1) = x + 1 \\), then \\( 2(x + 1) = 2x + 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Coefficient',
  'Simplify: \\( -4x + 6x \\)',
  NULL, '2x', '-10x', '10x', 'x',
  'Combine like terms: \\( -4x + 6x = 2x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Two-Step Evaluation',
  'Evaluate \\( 2x + 3y \\) when \\( x = 2 \\) and \\( y = 1 \\)',
  NULL, '7', '8', '5', '6',
  'Substitute: \\( 2(2) + 3(1) = 4 + 3 = 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Variable Coefficient',
  'What is the coefficient of \\( a \\) in \\( -5a + 3 \\)?',
  NULL, '-5', '3', 'a', '8',
  'The coefficient is the number multiplying \\( a \\), which is \\( -5 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Inverse Operations',
  'Which expression is the inverse of \\( x + 7 \\)?',
  NULL, 'x - 7', 'x + 7', '-x + 7', 'x \\div 7',
  'The inverse of addition is subtraction: \\( x + 7 \\Rightarrow x - 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Evaluation',
  'Evaluate \\( 5x - 2 \\) when \\( x = -1 \\)',
  NULL, '-7', '3', '-3', '7',
  'Substitute: \\( 5(-1) - 2 = -5 - 2 = -7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Expression',
  'Which of the following is an expression (not an equation)?',
  NULL, '4x - 3', '4x - 3 = 0', 'x = 5', 'x + 2 = 3',
  'Expressions do not contain equal signs; \\( 4x - 3 \\) is an expression.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Parentheses',
  'Simplify: \\( (2x + 3) + (4x - 1) \\)',
  NULL, '6x + 2', '6x - 4', '2x + 4x + 3 - 1', '2x - 2',
  'Combine like terms: \\( 2x + 4x = 6x \\), \\( 3 - 1 = 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Construction',
  'Which expression represents \"3 less than twice a number x\"?',
  NULL, '2x - 3', 'x - 3', '3x - 2', 'x + 3',
  '\"Twice a number x\" is \\( 2x \\), \"3 less than that\" is \\( 2x - 3 \\)', NOW()
);



INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Form',
  'Which expression correctly represents \"the sum of a number x and twice y\"?',
  NULL, 'x + 2y', '2x + y', 'x + y^2', 'x + y',
  '\"Twice y\" is \\( 2y \\), and the sum with x is \\( x + 2y \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitute and Simplify',
  'Evaluate \\( 3a - b \\) when \\( a = 2 \\) and \\( b = 5 \\)',
  NULL, '1', '11', '-1', '10',
  'Substitute: \\( 3(2) - 5 = 6 - 5 = 1 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine and Simplify',
  'Simplify: \\( 7x - 2x + 4 \\)',
  NULL, '5x + 4', '9x + 4', '7x + 2x + 4', '4x + 4',
  'Combine like terms: \\( 7x - 2x = 5x \\), then add 4: \\( 5x + 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Substitution',
  'Evaluate \\( -2x^2 \\) when \\( x = -3 \\)',
  NULL, '-18', '18', '-6', '6',
  'Square first: \\( (-3)^2 = 9 \\), then multiply: \\( -2 \\cdot 9 = -18 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Word to Expression',
  'Translate: \"Five times the difference of x and 2\"',
  NULL, '5(x - 2)', '5x - 2', 'x - 10', '5x + 2',
  '“The difference of x and 2” is \\( x - 2 \\), then multiply by 5: \\( 5(x - 2) \\)', NOW()
);



INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Factor',
  'Factor the expression: \\( 6x + 9 \\)',
  NULL, '3(2x + 3)', '2(3x + 3)', '6(x + 1.5)', '3x + 3',
  'Find GCF of 6 and 9, which is 3: \\( 3(2x + 3) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Meaning',
  'What expression means \"the product of 4 and the sum of x and y\"?',
  NULL, '4(x + y)', '4x + y', 'x + 4y', '4x + 4y',
  '\"The product of 4 and the sum\" means multiply 4 by \\( x + y \\): \\( 4(x + y) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Negative Terms',
  'Simplify: \\( -3x + 7 - 2x - 5 \\)',
  NULL, '-5x + 2', '-5x + 12', '5x + 2', '-x + 2',
  'Combine terms: \\( -3x - 2x = -5x \\), \\( 7 - 5 = 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Exponent',
  'Evaluate \\( x^2 + 2x \\) when \\( x = 4 \\)',
  NULL, '24', '20', '18', '36',
  '\\( 4^2 = 16 \\), \\( 2(4) = 8 \\), \\( 16 + 8 = 24 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translation',
  'Which expression means \"10 decreased by twice a number y\"?',
  NULL, '10 - 2y', '10y - 2', '2y - 10', '10 + 2y',
  '\"Decreased by\" means subtraction: \\( 10 - 2y \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Distribution',
  'Simplify: \\( 4(2x - 3) \\)',
  NULL, '8x - 12', '8x + 12', '6x - 3', '4x - 3',
  'Distribute 4: \\( 4 \\cdot 2x = 8x \\), \\( 4 \\cdot -3 = -12 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Multi-variable Evaluation',
  'Evaluate \\( 2a + 3b \\) when \\( a = 1 \\) and \\( b = 2 \\)',
  NULL, '8', '10', '7', '6',
  'Substitute: \\( 2(1) + 3(2) = 2 + 6 = 8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Zero Coefficient',
  'What is the value of \\( 0x + 5 \\) when \\( x = 100 \\)?',
  NULL, '5', '0', '100', '105',
  'Any number multiplied by 0 is 0. \\( 0 + 5 = 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Terms',
  'How many terms are in the expression \\( 7x + 3y - 2 \\)?',
  NULL, '3', '2', '4', '1',
  'Each separated part by + or - is a term: \\( 7x, 3y, -2 \\) → 3 terms.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Phrase',
  'Which expression represents \"half of the sum of x and y\"?',
  NULL, '\\( \\frac{x + y}{2} \\)', '\\( \\frac{x}{2} + y \\)', '\\( \\frac{y}{2} + x \\)', '\\( 2(x + y) \\)',
  '“Half of the sum” means divide the sum \\( x + y \\) by 2.', NOW()
);



INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Add Expressions',
  'Simplify: \\( (2x + 5) + (3x - 2) \\)',
  NULL, '5x + 3', '6x + 3', '5x - 7', '2x + x - 3',
  'Add like terms: \\( 2x + 3x = 5x \\), \\( 5 - 2 = 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Evaluation',
  'Evaluate \\( 4x - 2y \\) when \\( x = 3 \\), \\( y = 1 \\)',
  NULL, '10', '8', '6', '12',
  '\\( 4(3) - 2(1) = 12 - 2 = 10 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Structure',
  'What kind of mathematical object is \\( 5x + 7 \\)?',
  NULL, 'An algebraic expression', 'An equation', 'A term', 'A formula',
  'It has variables and constants with no equal sign → an expression.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Square of a Binomial',
  'Simplify: \\( (x + 2)^2 \\)',
  NULL, 'x^2 + 4x + 4', 'x^2 + 2', 'x^2 + 2x + 2', 'x^2 + 2x + 4',
  'Use identity: \\( (x + 2)^2 = x^2 + 2(2)x + 4 = x^2 + 4x + 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Subtract Expressions',
  'Simplify: \\( (5x + 2) - (3x + 4) \\)',
  NULL, '2x - 2', '8x + 2', '2x + 6', 'x - 2',
  'Distribute minus: \\( 5x + 2 - 3x - 4 = 2x - 2 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitution',
  'Find the value of \\( 2x^2 + 3x - 1 \\) when \\( x = 2 \\)',
  NULL, '13', '15', '11', '17',
  'Substitute: \\( 2(4) + 3(2) - 1 = 8 + 6 - 1 = 13 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Type',
  'Which of the following is a binomial expression?',
  NULL, 'x^2 + 3x', 'x^2', 'x + y + z', '2x',
  'A binomial has two terms. \\( x^2 + 3x \\) has two terms.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify with Parentheses',
  'Simplify: \\( 2(x - 3) + 4 \\)',
  NULL, '2x - 2', '2x - 6 + 4', '2x + 1', 'x - 2',
  'Distribute first: \\( 2x - 6 + 4 = 2x - 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate',
  'Which expression means \"6 more than the product of 3 and x\"?',
  NULL, '3x + 6', '6x + 3', 'x + 3 + 6', '6x - 3',
  'Product of 3 and x is \\( 3x \\), 6 more than that is \\( 3x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Nested Distribution',
  'Simplify: \\( 5[2x - (3x - 1)] \\)',
  NULL, '5(-x + 1)', '5(2x - 3x - 1)', '5x + 5', '5x - 1',
  'Inside: \\( 2x - (3x - 1) = -x + 1 \\), then \\( 5(-x + 1) \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Recognition',
  'Which of the following is an example of a linear algebraic expression?',
  NULL, '5x + 2', 'x^2 + 1', '3x^2 - x + 7', 'x^3',
  'A linear expression has the highest exponent of 1: \\( 5x + 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Expressions',
  'Simplify: \\( 6x - (2x + 3) \\)',
  NULL, '4x - 3', '8x + 3', '4x + 3', '6x - 2x - 3',
  'Distribute the minus: \\( 6x - 2x - 3 = 4x - 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Nested Powers',
  'Evaluate \\( (x + 1)^2 \\) when \\( x = 2 \\)',
  NULL, '9', '8', '6', '7',
  'Substitute: \\( (2 + 1)^2 = 3^2 = 9 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Constants',
  'In the expression \\( 2x + 5 \\), what is the constant?',
  NULL, '5', '2x', 'x', '0',
  'The constant is the term without a variable: \\( 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Translation',
  'Which expression represents \"the difference between triple x and 4\"?',
  NULL, '3x - 4', 'x - 4', '4 - 3x', '3(x - 4)',
  '“Triple x” is \\( 3x \\), and the difference with 4 is \\( 3x - 4 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Structure',
  'How many terms are in the expression \\( 4x^2 + 3x - 7 \\)?',
  NULL, '3', '2', '1', '4',
  'Terms are parts separated by + or -: \\( 4x^2, 3x, -7 \\) → 3 terms.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Simplify',
  'Simplify: \\( -2(x - 4) \\)',
  NULL, '-2x + 8', '-2x - 4', '-2x + 4', '2x - 8',
  'Distribute: \\( -2 \\cdot x = -2x \\), \\( -2 \\cdot -4 = +8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Using Substitution',
  'Evaluate \\( 2x^2 - 3x + 1 \\) when \\( x = 2 \\)',
  NULL, '3', '5', '7', '1',
  '\\( 2(4) - 3(2) + 1 = 8 - 6 + 1 = 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translation to Algebra',
  'Which expression means \"4 less than the square of x\"?',
  NULL, 'x^2 - 4', '4 - x^2', '(x - 4)^2', 'x^2 + 4',
  '“Square of x” is \\( x^2 \\), and “4 less than” means subtract 4: \\( x^2 - 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Expression',
  'Simplify: \\( x + 2x - x + 5 \\)',
  NULL, '2x + 5', 'x + 5', '3x + 5', 'x + 2 + 5',
  'Combine like terms: \\( x + 2x - x = 2x \\), then \\( 2x + 5 \\)', NOW()
);



INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribution Over Subtraction',
  'Simplify: \\( 3(x - 5) \\)',
  NULL, '3x - 15', '3x + 5', 'x - 15', '3x + 15',
  'Distribute: \\( 3 \\cdot x = 3x \\), \\( 3 \\cdot -5 = -15 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Like Terms',
  'Simplify: \\( 5x - 2x + 8 - 3 \\)',
  NULL, '3x + 5', '7x + 5', '3x + 11', 'x + 5',
  'Combine like terms: \\( 5x - 2x = 3x \\), \\( 8 - 3 = 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Value Substitution',
  'Find the value of \\( x^2 + 2x + 1 \\) when \\( x = -1 \\)',
  NULL, '0', '4', '1', '-1',
  'Substitute: \\( (-1)^2 + 2(-1) + 1 = 1 - 2 + 1 = 0 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Like Terms',
  'Simplify: \\( 3a + 4a - 2a \\)',
  NULL, '5a', '3a', '7a', '6a',
  'Add/subtract like terms: \\( 3a + 4a - 2a = 5a \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Comparison',
  'Which expression is equivalent to \\( x + x + x + x + x \\)?',
  NULL, '5x', 'x^5', 'x + 5', 'x \\cdot 5x',
  'Repeated addition of a variable is multiplication: \\( x + x + x + x + x = 5x \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Factor Out Common Term',
  'Factor: \\( 10x + 15 \\)',
  NULL, '5(2x + 3)', '10(x + 1.5)', '5x + 3', '2(5x + 3)',
  'The GCF of 10 and 15 is 5: \\( 5(2x + 3) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Classification',
  'Which of the following is a trinomial expression?',
  NULL, 'x^2 + 2x + 1', '3x', 'x + 5', 'x^2 + 1',
  'A trinomial has three terms. \\( x^2 + 2x + 1 \\) is a trinomial.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify with Negative Coefficients',
  'Simplify: \\( -3x - 4x + 2 \\)',
  NULL, '-7x + 2', '7x + 2', '-1x + 2', '-7x - 2',
  'Combine like terms: \\( -3x - 4x = -7x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitute Values',
  'Evaluate \\( x^2 - y^2 \\) when \\( x = 5 \\), \\( y = 3 \\)',
  NULL, '16', '25', '9', '8',
  'Use difference of squares: \\( 25 - 9 = 16 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translation of Verbal Phrase',
  'Translate: \"The square of the sum of x and 2\"',
  NULL, '(x + 2)^2', 'x^2 + 2^2', 'x^2 + 2', '(x^2 + 4)',
  '“Square of the sum” means \\( (x + 2)^2 \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify with Distribution',
  'Simplify: \\( -4(x + 2) \\)',
  NULL, '-4x - 8', '-4x + 8', '-4x - 2', '4x - 8',
  'Distribute: \\( -4 \\cdot x = -4x \\), \\( -4 \\cdot 2 = -8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Evaluation',
  'Evaluate \\( 3x^2 + 2x - 1 \\) when \\( x = 1 \\)',
  NULL, '4', '5', '2', '3',
  'Substitute: \\( 3(1)^2 + 2(1) - 1 = 3 + 2 - 1 = 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Recognize Constant Term',
  'What is the constant in the expression \\( 7x - 4 + 2x \\)?',
  NULL, '-4', '7', '9x', '0',
  'The only number not attached to a variable is the constant: \\( -4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Group and Simplify',
  'Simplify: \\( (x + 3) + (x - 5) \\)',
  NULL, '2x - 2', 'x + x + 3 - 5', 'x - 2', '2x + 8',
  'Group like terms: \\( x + x = 2x \\), \\( 3 - 5 = -2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Apply Exponents',
  'Simplify: \\( (2x)^2 \\)',
  NULL, '4x^2', '2x^2', 'x^2 + 4', '2x',
  'Square both parts: \\( 2^2 = 4 \\), \\( x^2 = x^2 \\) → \\( 4x^2 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Combine',
  'Simplify: \\( 2(x + 3) + 4x \\)',
  NULL, '6x + 6', '2x + 12', '6x + 3', '2x + 7',
  'Distribute: \\( 2x + 6 + 4x = 6x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitute Negative',
  'Evaluate \\( x^2 + 2x + 1 \\) when \\( x = -2 \\)',
  NULL, '1', '5', '3', '0',
  '\\( (-2)^2 = 4 \\), \\( 2(-2) = -4 \\), \\( 4 - 4 + 1 = 1 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Form',
  'Which expression represents \"double the difference between x and 4\"?',
  NULL, '2(x - 4)', '2x - 4', '(x - 4)^2', '2x + 4',
  '“Double the difference” means \\( 2(x - 4) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Recognize Like Terms',
  'Which pair are like terms?',
  NULL, '3x and -7x', '3x and 3y', 'x^2 and x', '5 and 5x',
  'Like terms have the same variable and exponent: \\( 3x, -7x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Translation',
  'Which expression means \"the product of 4 and the square of x\"?',
  NULL, '4x^2', '(4x)^2', 'x^2 + 4', '4(x + x)',
  '\"Square of x\" is \\( x^2 \\), and multiplying by 4 gives \\( 4x^2 \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Like Terms',
  'Simplify: \\( 4x + 7 + 2x - 3 \\)',
  NULL, '6x + 4', '2x + 10', '6x + 10', '4x + 10',
  'Combine like terms: \\( 4x + 2x = 6x \\), \\( 7 - 3 = 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Evaluation',
  'Evaluate \\( 3x - 4y \\) when \\( x = 2 \\) and \\( y = 1 \\)',
  NULL, '2', '10', '-2', '8',
  'Substitute: \\( 3(2) - 4(1) = 6 - 4 = 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Factoring',
  'Factor: \\( x^2 + 5x + 6 \\)',
  NULL, '(x + 2)(x + 3)', '(x + 1)(x + 6)', '(x + 2)^2', '(x + 3)^2',
  'Factors of 6 that sum to 5 are 2 and 3: \\( (x + 2)(x + 3) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify With Zero',
  'Simplify: \\( 7x + 0 \\)',
  NULL, '7x', '0', 'x', '7',
  'Adding 0 does not change the value: \\( 7x + 0 = 7x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Identification',
  'Which of the following is not a variable expression?',
  NULL, '7 + 4', '2x - 3', 'x + y', '4a^2',
  '7 + 4 is a numerical expression, not a variable expression.', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Translation',
  'Translate to an expression: \"Six more than twice a number x\"',
  NULL, '2x + 6', '6x + 2', 'x + 6', '2x - 6',
  '“Twice a number x” is \\( 2x \\), and six more is \\( 2x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Like Terms',
  'Simplify: \\( 9x + 2x - x \\)',
  NULL, '10x', '12x', '11x', 'x',
  'Combine: \\( 9x + 2x = 11x \\), then \\( 11x - x = 10x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Zero',
  'Evaluate: \\( 5x + 3 \\) when \\( x = 0 \\)',
  NULL, '3', '0', '5', '8',
  'Substitute: \\( 5(0) + 3 = 0 + 3 = 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Expression Type',
  'What type of expression is \\( 4x^2 - 3x + 7 \\)?',
  NULL, 'Quadratic expression', 'Binomial', 'Linear expression', 'Constant',
  'Highest degree is 2, so it is a quadratic expression.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Negatives',
  'Simplify: \\( -2(x - 3) \\)',
  NULL, '-2x + 6', '-2x - 6', '-2x + 3', '2x - 6',
  'Distribute: \\( -2 \\cdot x = -2x \\), \\( -2 \\cdot -3 = +6 \\)', NOW()
);




INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Exponent Expression',
  'Simplify: \\( x^2 + 2x^2 \\)',
  NULL, '3x^2', 'x^4', '2x^2', 'x^3',
  'Add like terms with same exponent: \\( x^2 + 2x^2 = 3x^2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitute and Simplify',
  'Evaluate: \\( 2x^2 - x \\) when \\( x = 3 \\)',
  NULL, '15', '3', '12', '9',
  'Substitute: \\( 2(3)^2 - 3 = 18 - 3 = 15 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Verbal Phrase',
  'Translate: \"Three times the sum of x and 1\"',
  NULL, '3(x + 1)', 'x + 3', '3x + 1', 'x(3 + 1)',
  '“Three times the sum” means multiply 3 by \\( x + 1 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Coefficient',
  'What is the coefficient of \\( y \\) in \\( 5y - 8 \\)?',
  NULL, '5', '-8', 'y', '13',
  'The number multiplied by \\( y \\) is the coefficient: 5', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Recognize Constant Expression',
  'Which expression is a constant?',
  NULL, '12', 'x + 1', '5x', 'x^2',
  '12 is a fixed value, making it a constant expression.', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute Negative Coefficient',
  'Simplify: \\( -3(2x - 1) \\)',
  NULL, '-6x + 3', '-6x - 1', '-5x + 1', '6x - 3',
  'Distribute: \\( -3 \\cdot 2x = -6x \\), \\( -3 \\cdot -1 = +3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Two Variables',
  'Evaluate: \\( 2a - 3b \\) when \\( a = 4 \\), \\( b = 2 \\)',
  NULL, '2', '14', '1', '8',
  '\\( 2(4) - 3(2) = 8 - 6 = 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Factoring Common Term',
  'Factor: \\( 6x + 12 \\)',
  NULL, '6(x + 2)', '3(x + 4)', '2(x + 6)', '6(x - 2)',
  'Greatest common factor is 6: \\( 6(x + 2) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Variable Term',
  'Which term is the variable in \\( 9x + 5 \\)?',
  NULL, '9x', '5', 'x', 'x + 5',
  'The term with the variable is \\( 9x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Complex Expression',
  'Simplify: \\( x + 2x + 3 + 4x + 5 \\)',
  NULL, '7x + 8', '6x + 3', '5x + 5', '8x + 3',
  'Combine like terms: \\( x + 2x + 4x = 7x \\), \\( 3 + 5 = 8 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Nested Expression',
  'Simplify: \\( 2(x + 4) + 3(x - 2) \\)',
  NULL, '5x + 2', '5x + 10', '6x + 2', '5x - 2',
  'Distribute: \\( 2x + 8 + 3x - 6 = 5x + 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Fractions',
  'Evaluate: \\( \\frac{1}{2}x + 4 \\) when \\( x = 6 \\)',
  NULL, '7', '6', '8', '4',
  '\\( \\frac{1}{2} \\cdot 6 = 3 \\), so \\( 3 + 4 = 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Polynomial',
  'What type of expression is \\( x^3 - 2x^2 + x - 5 \\)?',
  NULL, 'Cubic polynomial', 'Quadratic expression', 'Binomial', 'Monomial',
  'Highest degree is 3, so it is a cubic polynomial.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Simplify',
  'Simplify: \\( -4(x - 2) + 3x \\)',
  NULL, '-x + 8', '-x - 8', '-7x + 2', 'x + 8',
  'Distribute: \\( -4x + 8 + 3x = -x + 8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Zero Coefficient',
  'What is the result of \\( 0x + 7 \\)?',
  NULL, '7', '0', 'x + 7', 'x',
  '\\( 0x = 0 \\), so \\( 0 + 7 = 7 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Multi-Term Expression',
  'Simplify: \\( 5x + 3x - 2 + 4 \\)',
  NULL, '8x + 2', '8x - 2', '7x + 6', '5x + 7',
  'Combine like terms: \\( 5x + 3x = 8x \\), \\( -2 + 4 = 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Value',
  'What is the value of \\( 2x + 1 \\) when \\( x = -3 \\)?',
  NULL, '-5', '-6', '-7', '5',
  '\\( 2(-3) + 1 = -6 + 1 = -5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Coefficients',
  'Combine: \\( -2x + 4x - x \\)',
  NULL, 'x', '3x', '-x', '2x',
  '\\( -2x + 4x = 2x \\), \\( 2x - x = x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Factor Expression',
  'Factor: \\( x^2 - 9 \\)',
  NULL, '(x + 3)(x - 3)', '(x - 9)(x + 1)', '(x - 3)^2', '(x - 1)(x + 9)',
  'This is a difference of squares: \\( x^2 - 9 = (x + 3)(x - 3) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Verbal Statement',
  'Translate: “Twice a number decreased by 7”',
  NULL, '2x - 7', 'x - 7', '2x + 7', '7 - 2x',
  '“Twice a number” is \\( 2x \\), then subtract 7 → \\( 2x - 7 \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Value',
  'What is the value of \\( 4x - 5 \\) when \\( x = 2 \\)?',
  NULL, '3', '2', '5', '11',
  'Substitute: \\( 4(2) - 5 = 8 - 5 = 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Combine',
  'Simplify: \\( 3(x + 4) - 2(x - 1) \\)',
  NULL, 'x + 14', 'x + 2', '5x + 2', 'x + 10',
  'Distribute: \\( 3x + 12 - 2x + 2 = x + 14 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Identification',
  'Which of the following is a binomial?',
  NULL, '\\( 3x + 2 \\)', '\\( x^2 + x + 1 \\)', '\\( 7 \\)', '\\( 2x \\)',
  'A binomial has two terms: \\( 3x + 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Form',
  'What is the standard form of \\( 5 + 3x \\)?',
  NULL, '3x + 5', '5x + 3', 'x + 8', '8x',
  'Standard form is variable first: \\( 3x + 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine with Negative',
  'Simplify: \\( -5x + 2x \\)',
  NULL, '-3x', '-7x', '-2x', '3x',
  'Add like terms: \\( -5x + 2x = -3x \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Expression',
  'Translate into an expression: “The difference of twice a number and 5”',
  NULL, '2x - 5', 'x - 5', '2x + 5', '5 - 2x',
  '“Twice a number” is \\( 2x \\), then subtract 5 → \\( 2x - 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Monomial',
  'Which of the following is a monomial?',
  NULL, '7x', 'x + 1', 'x^2 + 2x + 1', '3x - 4',
  'A monomial has only one term, such as \\( 7x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Factor Common Term',
  'Factor: \\( 10x + 5 \\)',
  NULL, '5(2x + 1)', '5(x + 5)', '10(x + 0.5)', '2(5x + 5)',
  'Common factor is 5: \\( 5(2x + 1) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Nested',
  'Evaluate: \\( (x + 2)^2 \\) when \\( x = 1 \\)',
  NULL, '9', '6', '4', '3',
  '\\( (1 + 2)^2 = 3^2 = 9 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Simplify',
  'Simplify: \\( 4(2x - 1) - 3(2x + 1) \\)',
  NULL, '2x - 7', '14x + 1', '8x - 3', '2x + 7',
  'Distribute: \\( 8x - 4 - 6x - 3 = 2x - 7 \\)', NOW()
);



INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Absolute',
  'Evaluate: \\( |x - 3| \\) when \\( x = 7 \\)',
  NULL, '4', '-4', '10', '0',
  '\\( 7 - 3 = 4 \\), and the absolute value is \\( |4| = 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression from Words',
  'Which expression represents “three times the sum of x and 2”?',
  NULL, '3(x + 2)', '3x + 2', 'x + 2 \\times 3', 'x + 5',
  '“Sum of x and 2” is \\( x + 2 \\); three times means \\( 3(x + 2) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine with Constants',
  'Simplify: \\( 2x + 4 - x + 1 \\)',
  NULL, 'x + 5', '3x + 3', 'x + 3', 'x + 4',
  'Combine like terms: \\( 2x - x = x \\), \\( 4 + 1 = 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Parentheses',
  'Evaluate: \\( 3(x + 2) \\) when \\( x = 4 \\)',
  NULL, '18', '12', '10', '6',
  '\\( 3(4 + 2) = 3(6) = 18 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify and Factor',
  'Factor the expression: \\( 12x + 8 \\)',
  NULL, '4(3x + 2)', '2(6x + 4)', '6(2x + 1)', '3(4x + 2)',
  'GCF is 4: \\( 4(3x + 2) \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Exponents',
  'Simplify: \\( x^2 + 2x + x^2 \\)',
  NULL, '2x^2 + 2x', 'x^4 + 2x', '3x^2', 'x^2 + x',
  'Combine like terms: \\( x^2 + x^2 = 2x^2 \\), so \\( 2x^2 + 2x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Zero Variable',
  'Evaluate: \\( 5x + 3 \\) when \\( x = 0 \\)',
  NULL, '3', '5', '0', '8',
  '\\( 5 \\cdot 0 + 3 = 0 + 3 = 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute Negative',
  'Simplify: \\( -3(x - 2) \\)',
  NULL, '-3x + 6', '-3x - 6', '3x + 6', '-3x + 2',
  'Distribute: \\( -3x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Negative Expression',
  'What is the value of \\( -2x + 5 \\) when \\( x = -3 \\)?',
  NULL, '11', '-1', '-11', '1',
  '\\( -2(-3) + 5 = 6 + 5 = 11 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Algebraic',
  'Which expression represents “6 less than a number”?',
  NULL, 'x - 6', '6 - x', 'x + 6', '-6x',
  '“6 less than a number” means subtract 6: \\( x - 6 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Distributive Property',
  'Simplify: \\( 2(3x + 4) + x \\)',
  NULL, '7x + 8', '6x + 4', '5x + 8', '7x + 4',
  'Distribute: \\( 6x + 8 + x = 7x + 8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Fractions',
  'What is the value of \\( \\frac{1}{2}x + 3 \\) when \\( x = 4 \\)?',
  NULL, '5', '6', '3', '4',
  '\\( \\frac{1}{2}(4) + 3 = 2 + 3 = 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Like Terms',
  'Simplify: \\( 9x - 4x + 2 \\)',
  NULL, '5x + 2', '13x + 2', '5x - 2', 'x + 2',
  'Combine like terms: \\( 9x - 4x = 5x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate to Algebra',
  'Translate: “Seven increased by twice a number”',
  NULL, '7 + 2x', '2x - 7', '2x + 7x', '7x + 2',
  '“Twice a number” = \\( 2x \\); increased by 7 → \\( 7 + 2x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Distribution',
  'Simplify: \\( -2(x + 5) \\)',
  NULL, '-2x - 10', '-2x + 5', '2x - 10', '-2x + 10',
  'Distribute: \\( -2x - 10 \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Evaluation',
  'Evaluate: \\( 3x^2 - 2x \\) when \\( x = 2 \\)',
  NULL, '8', '10', '6', '12',
  '\\( 3(2)^2 - 2(2) = 12 - 4 = 8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Nested Parentheses',
  'Simplify: \\( 2(x + 3) - (x - 4) \\)',
  NULL, 'x + 10', '3x + 1', '2x - 1', 'x + 5',
  'Distribute: \\( 2x + 6 - x + 4 = x + 10 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Verbal Phrase',
  'Which expression matches “Four times a number decreased by 7”?',
  NULL, '4x - 7', 'x - 7', '4x + 7', '7 - 4x',
  '“Four times a number” is \\( 4x \\); “decreased by 7” is \\( 4x - 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Constant',
  'In the expression \\( 6x + 9 \\), which part is the constant?',
  NULL, '9', '6', 'x', '6x',
  'The number without a variable is the constant → 9', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Like Terms',
  'Simplify: \\( 3x + 4x + 5 \\)',
  NULL, '7x + 5', '12x', 'x + 5', '7x',
  'Combine \\( 3x + 4x = 7x \\), so final answer is \\( 7x + 5 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Variable Identification',
  'Which of the following is a variable?',
  NULL, 'y', '5', '2x', '8 + 3',
  'A variable is a symbol that can represent a number — “y” is a variable.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression to Words',
  'What phrase describes the expression \\( x - 9 \\)?',
  NULL, '9 less than a number', 'A number increased by 9', '9 times a number', 'A number minus 1',
  '“x - 9” means 9 less than a number.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Decimal',
  'Evaluate: \\( 2.5x + 1.5 \\) when \\( x = 2 \\)',
  NULL, '6.5', '5.5', '4.5', '7.5',
  '\\( 2.5(2) + 1.5 = 5 + 1.5 = 6.5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Zero Property',
  'What is the result of \\( 0x + 9 \\)?',
  NULL, '9', '0', 'x', 'Cannot be determined',
  'Any number times 0 is 0, so \\( 0x + 9 = 0 + 9 = 9 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Expression',
  'Simplify: \\( 5x + 2x - 3 \\)',
  NULL, '7x - 3', '3x + 3', 'x - 3', '6x + 3',
  'Combine \\( 5x + 2x = 7x \\), then \\( 7x - 3 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Two Variables',
  'Evaluate: \\( 2x + 3y \\) when \\( x = 2 \\) and \\( y = 1 \\)',
  NULL, '7', '10', '8', '5',
  '\\( 2(2) + 3(1) = 4 + 3 = 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Coefficient',
  'What is the coefficient of \\( y \\) in the expression \\( 7x + 4y - 2 \\)?',
  NULL, '4', '7', 'y', '2',
  'The coefficient of \\( y \\) is the number multiplying it: 4', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Value Evaluation',
  'Evaluate: \\( 3x - 4 \\) when \\( x = -2 \\)',
  NULL, '-10', '10', '2', '-2',
  '\\( 3(-2) - 4 = -6 - 4 = -10 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Parentheses',
  'Simplify: \\( 4(x - 1) + 2 \\)',
  NULL, '4x - 2', '4x + 2', '4x - 4', 'x + 1',
  'Distribute: \\( 4x - 4 + 2 = 4x - 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Subtraction',
  'Simplify: \\( 10x - 3x + 1 \\)',
  NULL, '7x + 1', '13x + 1', '7x - 1', '10x + 1',
  'Combine \\( 10x - 3x = 7x \\), result is \\( 7x + 1 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Combine',
  'Simplify: \\( 3(x + 2) + 2(x - 1) \\)',
  NULL, '5x + 4', '5x + 2', '6x + 1', 'x + 4',
  '\\( 3x + 6 + 2x - 2 = 5x + 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Phrase to Algebra',
  'What is the algebraic expression for “twice a number minus 4”?',
  NULL, '2x - 4', 'x - 4', '2x + 4', '4 - 2x',
  '“Twice a number” means \\( 2x \\); subtract 4 → \\( 2x - 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Using Fraction',
  'Evaluate: \\( \\frac{1}{2}x - 1 \\) when \\( x = 6 \\)',
  NULL, '2', '3', '4', '1',
  '\\( \\frac{1}{2}(6) - 1 = 3 - 1 = 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Variable',
  'Which part of the expression \\( 4x + 7 \\) is the variable?',
  NULL, 'x', '4', '7', '4x',
  'The letter that represents an unknown number is “x”.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify and Combine',
  'Simplify: \\( 6x + 2 - x + 5 \\)',
  NULL, '5x + 7', '7x + 3', 'x + 3', '6x + 7',
  '\\( 6x - x = 5x; 2 + 5 = 7 \\); so \\( 5x + 7 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Basic Simplification',
  'Simplify: \\( 2x + 4 - x \\)',
  NULL, 'x + 4', '3x + 4', 'x + 2', '2x + 4',
  '\\( 2x - x = x \\), so \\( x + 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Value Substitution',
  'Evaluate: \\( 5x - 3 \\) when \\( x = 4 \\)',
  NULL, '17', '20', '23', '8',
  '\\( 5(4) - 3 = 20 - 3 = 17 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Verbal to Algebraic',
  'Which expression matches “Triple a number decreased by 2”?',
  NULL, '3x - 2', 'x - 2', '2x - 3', '3 - 2x',
  '“Triple a number” is \\( 3x \\); “decreased by 2” gives \\( 3x - 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Expression',
  'Which of the following is an algebraic expression?',
  NULL, 'x + 7', '8', 'x = 3', '7 × 2',
  '“x + 7” is a valid algebraic expression; others are not or are full equations.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Zero Value Evaluation',
  'Evaluate: \\( 4x + 2 \\) when \\( x = 0 \\)',
  NULL, '2', '4', '0', '6',
  '\\( 4(0) + 2 = 0 + 2 = 2 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Simplification',
  'Simplify: \\( x + x + x \\)',
  NULL, '3x', 'x^3', 'x + 3', '3 + x',
  '\\( x + x + x = 3x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distributive Property',
  'Simplify: \\( 2(3x - 4) \\)',
  NULL, '6x - 8', '5x - 4', '6x + 8', '3x - 8',
  'Distribute: \\( 2 \\times 3x = 6x \\), \\( 2 \\times -4 = -8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Evaluation',
  'Evaluate: \\( 3x + 2 \\) when \\( x = -1 \\)',
  NULL, '-1', '1', '-5', '5',
  '\\( 3(-1) + 2 = -3 + 2 = -1 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Verbal Translation',
  'What is the algebraic expression for “7 less than twice a number”?',
  NULL, '2x - 7', '7x - 2', 'x - 7', '2x + 7',
  '“Twice a number” is \\( 2x \\); “7 less” means subtract 7: \\( 2x - 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Zero',
  'Evaluate: \\( 9x \\) when \\( x = 0 \\)',
  NULL, '0', '9', '1', 'x',
  'Any number times zero equals zero: \\( 9 \\times 0 = 0 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Like Terms',
  'Which terms are like terms in the expression \\( 3x + 2 + 5x \\)?',
  NULL, '3x and 5x', '3x and 2', '2 and 5x', 'All are like terms',
  'Like terms have the same variable part — \\( 3x \\) and \\( 5x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplifying Constants',
  'Simplify: \\( 6 + 2 + x \\)',
  NULL, 'x + 8', '6x + 2', '8x', 'x + 4',
  'Combine constants: \\( 6 + 2 = 8 \\), so \\( x + 8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine and Simplify',
  'Simplify: \\( 4x - 2x + 6 \\)',
  NULL, '2x + 6', '6x + 2', '2x - 6', 'x + 8',
  'Combine \\( 4x - 2x = 2x \\); result is \\( 2x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distributive Practice',
  'Simplify: \\( -3(x + 5) \\)',
  NULL, '-3x - 15', '-3x + 15', '-3x - 5', 'x - 15',
  'Distribute \\( -3 \\): \\( -3x - 15 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Expression',
  'Which algebraic expression means “a number divided by 4 then increased by 3”?',
  NULL, '\\( \\frac{x}{4} + 3 \\)', '\\( \\frac{x + 3}{4} \\)', '\\( 4x + 3 \\)', '\\( x + 4 + 3 \\)',
  '“Number divided by 4” is \\( \\frac{x}{4} \\), then +3: \\( \\frac{x}{4} + 3 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Negative Coefficient',
  'Evaluate: \\( -2x + 5 \\) when \\( x = 3 \\)',
  NULL, '-1', '1', '11', '-6',
  '\\( -2(3) + 5 = -6 + 5 = -1 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Multiple Operations',
  'Simplify: \\( 4x - 2 + x + 6 \\)',
  NULL, '5x + 4', '3x + 6', '4x + 6', '5x + 8',
  'Combine like terms: \\( 4x + x = 5x \\), \\( -2 + 6 = 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Using Fractional Coefficient',
  'Evaluate: \\( \\frac{3}{4}x \\) when \\( x = 8 \\)',
  NULL, '6', '3', '12', '4',
  '\\( \\frac{3}{4} \\times 8 = 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Constant',
  'In the expression \\( 2x + 7 \\), what is the constant?',
  NULL, '7', '2', 'x', '2x',
  'The number added without a variable is the constant: 7', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Complex Expression',
  'Simplify: \\( 5x - 2x + 3 - x \\)',
  NULL, '2x + 3', '6x - 3', '4x + 3', '2x - 3',
  '\\( 5x - 2x - x = 2x \\), so final: \\( 2x + 3 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Negative Coefficient',
  'Evaluate: \\( -2x + 5 \\) when \\( x = 3 \\)',
  NULL, '-1', '1', '11', '-6',
  '\\( -2(3) + 5 = -6 + 5 = -1 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Multiple Operations',
  'Simplify: \\( 4x - 2 + x + 6 \\)',
  NULL, '5x + 4', '3x + 6', '4x + 6', '5x + 8',
  'Combine like terms: \\( 4x + x = 5x \\), \\( -2 + 6 = 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Using Fractional Coefficient',
  'Evaluate: \\( \\frac{3}{4}x \\) when \\( x = 8 \\)',
  NULL, '6', '3', '12', '4',
  '\\( \\frac{3}{4} \\times 8 = 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Constant',
  'In the expression \\( 2x + 7 \\), what is the constant?',
  NULL, '7', '2', 'x', '2x',
  'The number added without a variable is the constant: 7', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Complex Expression',
  'Simplify: \\( 5x - 2x + 3 - x \\)',
  NULL, '2x + 3', '6x - 3', '4x + 3', '2x - 3',
  '\\( 5x - 2x - x = 2x \\), so final: \\( 2x + 3 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Two-Step Expression',
  'Evaluate: \\( 2x + 3 \\) when \\( x = 5 \\)',
  NULL, '13', '11', '15', '10',
  '\\( 2 \\times 5 + 3 = 10 + 3 = 13 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distributive Simplification',
  'Simplify: \\( 3(x - 2) \\)',
  NULL, '3x - 6', '3x + 6', 'x - 6', '3x - 2',
  'Distribute: \\( 3 \\times x = 3x \\), \\( 3 \\times -2 = -6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Variable',
  'Evaluate: \\( x^2 - 2x \\) when \\( x = -3 \\)',
  NULL, '15', '3', '-3', '21',
  '\\( (-3)^2 = 9 \\), \\( -2(-3) = +6 \\), so \\( 9 + 6 = 15 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Recognition',
  'Which of the following is an algebraic expression?',
  NULL, '\\( 5x + 2 \\)', '\\( x = 5 \\)', '\\( 7 + 3 = 10 \\)', '\\( 3 \\times 4 \\)',
  'Only \\( 5x + 2 \\) is an expression; others are equations or numeric values.', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Nested Expression',
  'Simplify: \\( (2x + 1) + (x + 3) \\)',
  NULL, '3x + 4', '3x + 2', '2x + 3', 'x + 4',
  'Combine like terms: \\( 2x + x = 3x \\), \\( 1 + 3 = 4 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Evaluation',
  'Evaluate: \\( 7x - 4 \\) when \\( x = 2 \\)',
  NULL, '10', '18', '11', '3',
  '\\( 7 \\times 2 = 14; 14 - 4 = 10 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Like Terms Simplification',
  'Simplify: \\( x + 2x + 3 + 4 \\)',
  NULL, '3x + 7', '2x + 7', 'x + 7', '3x + 4',
  'Combine \\( x + 2x = 3x \\), and \\( 3 + 4 = 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Combine',
  'Simplify: \\( 4(x + 2) - 3 \\)',
  NULL, '4x + 5', '4x + 8', '4x - 5', 'x + 5',
  'Distribute: \\( 4x + 8 \\), then subtract 3: \\( 4x + 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Words to Expression',
  'What expression represents “three times a number decreased by 5”?',
  NULL, '\\( 3x - 5 \\)', '\\( 3x + 5 \\)', '\\( x - 5 \\)', '\\( 5x - 3 \\)',
  '“Three times a number” is \\( 3x \\), and “decreased by 5” is minus 5', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Square',
  'Evaluate: \\( x^2 \\) when \\( x = 4 \\)',
  NULL, '16', '8', '2', '12',
  'Square of 4 is \\( 4^2 = 16 \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitution',
  'Evaluate: \\( 2x^2 + x \\) when \\( x = 3 \\)',
  NULL, '21', '15', '12', '18',
  '\\( 2(3^2) + 3 = 2(9) + 3 = 18 + 3 = 21 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Constants and Variables',
  'Which part of the expression \\( 6x + 9 \\) is a constant?',
  NULL, '9', '6x', 'x', '6',
  'The constant is the term without a variable: 9', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Coefficients',
  'Simplify: \\( -2x + 5x \\)',
  NULL, '3x', '-3x', '7x', 'x',
  'Combine like terms: \\( -2x + 5x = 3x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Verbal Phrase',
  'Which expression matches “twice a number minus 7”?',
  NULL, '\\( 2x - 7 \\)', '\\( x - 7 \\)', '\\( 7 - 2x \\)', '\\( x + 7 \\)',
  '“Twice a number” is \\( 2x \\), and “minus 7” is \\( - 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Like Terms with Constants',
  'Simplify: \\( x + x + 2 + 2 \\)',
  NULL, '2x + 4', '2x + 2', 'x + 4', 'x + 2',
  '\\( x + x = 2x \\) and \\( 2 + 2 = 4 \\), so \\( 2x + 4 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine and Evaluate',
  'Evaluate: \\( x + 2x - 3 \\) when \\( x = 4 \\)',
  NULL, '9', '3', '6', '1',
  '\\( x + 2x = 3x \\); \\( 3x - 3 = 12 - 3 = 9 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distributive Law',
  'Simplify: \\( 5(x - 1) + 2x \\)',
  NULL, '7x - 5', '5x - 1', '3x - 1', '7x + 5',
  '\\( 5x - 5 + 2x = 7x - 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Zero',
  'Evaluate: \\( x + 0 \\) when \\( x = 9 \\)',
  NULL, '9', '0', 'x', '1',
  'Adding zero doesn’t change the value: \\( x + 0 = x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Sentence to Expression',
  'Translate: “The sum of a number and 8”',
  NULL, '\\( x + 8 \\)', '\\( 8x \\)', '\\( 8 - x \\)', '\\( x - 8 \\)',
  '“Sum” means addition: \\( x + 8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Nested Evaluation',
  'Evaluate: \\( (2x + 1)^2 \\) when \\( x = 2 \\)',
  NULL, '25', '16', '20', '9',
  '\\( 2x + 1 = 5 \\), so \\( 5^2 = 25 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES

(
  'Foundations and Basics', 'Variables and Expressions', 'Addition of Variables',
  'Simplify: \\( 4x + x \\)',
  NULL, '5x', '4x^2', 'x + 4', 'x^5',
  'Combine like terms: \\( 4x + x = 5x \\)', NOW()
),

(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Parentheses',
  'Evaluate: \\( 2(x + 3) \\) when \\( x = 1 \\)',
  NULL, '8', '6', '5', '4',
  'Inside first: \\( x + 3 = 4 \\), then \\( 2 \\times 4 = 8 \\)', NOW()
),

(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Multiple Variables',
  'Simplify: \\( 2a + 3b \\) when \\( a = 1, b = 2 \\)',
  NULL, '8', '10', '7', '6',
  '\\( 2(1) + 3(2) = 2 + 6 = 8 \\)', NOW()
),

(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Square and Multiply',
  'Evaluate: \\( 3x^2 \\) when \\( x = 2 \\)',
  NULL, '12', '9', '6', '8',
  '\\( 3 \\times 2^2 = 3 \\times 4 = 12 \\)', NOW()
),

(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Words',
  'What expression means “5 less than twice a number”?',
  NULL, '\\( 2x - 5 \\)', '\\( 5x - 2 \\)', '\\( x - 5 \\)', '\\( 2x + 5 \\)',
  '“Twice a number” = \\( 2x \\), “5 less” = minus 5', NOW()
),

(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Expression',
  'Simplify: \\( 7x - 3x + 2 \\)',
  NULL, '4x + 2', '10x + 2', '4x - 2', '3x + 7',
  '\\( 7x - 3x = 4x \\), constant stays as 2', NOW()
),

(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Complex Expression',
  'Evaluate: \\( 5x - (x + 3) \\) when \\( x = 4 \\)',
  NULL, '13', '12', '10', '9',
  '\\( 5(4) - (4 + 3) = 20 - 7 = 13 \\)', NOW()
),

(
  'Foundations and Basics', 'Variables and Expressions', 'Zero Multiplication',
  'What is the value of \\( 0(x + 3) \\) when \\( x = 5 \\)?',
  NULL, '0', '8', '5', '3',
  'Any number multiplied by zero is zero', NOW()
),

(
  'Foundations and Basics', 'Variables and Expressions', 'Nested Terms',
  'Simplify: \\( (x + 2) + (x + 3) \\)',
  NULL, '2x + 5', '2x + 6', 'x + 5', '2x + 3',
  'Combine: \\( x + x = 2x \\), \\( 2 + 3 = 5 \\)', NOW()
),

(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Evaluation',
  'Evaluate: \\( x^2 + 2x + 1 \\) when \\( x = 3 \\)',
  NULL, '16', '14', '12', '9',
  '\\( 3^2 + 2(3) + 1 = 9 + 6 + 1 = 16 \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitute and Add',
  'Evaluate: \\( x + 3 \\) when \\( x = 7 \\)',
  NULL, '10', '4', '21', '9',
  '\\( 7 + 3 = 10 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Combine',
  'Simplify: \\( 2(x + 5) + x \\)',
  NULL, '3x + 10', '2x + 5', 'x + 10', '3x + 5',
  '\\( 2x + 10 + x = 3x + 10 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Recognition',
  'Which is an algebraic expression?',
  NULL, '\\( 3x + 1 \\)', '7', '\\( = 5 \\)', 'True',
  'Algebraic expressions contain variables and operations', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Constant Terms',
  'Simplify: \\( 2x + 4 - 4 \\)',
  NULL, '2x', '2x + 4', 'x + 4', '4x',
  '\\( 4 - 4 = 0 \\), so the expression is \\( 2x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Negative',
  'Evaluate: \\( -2x \\) when \\( x = 6 \\)',
  NULL, '-12', '-4', '12', '-6',
  '\\( -2 \\times 6 = -12 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Like Terms',
  'Which are like terms?',
  NULL, '\\( 5x \\) and \\( 3x \\)', '\\( 2x \\) and \\( 2y \\)', '\\( x \\) and \\( x^2 \\)', '\\( y \\) and \\( 1 \\)',
  'They have the same variable and exponent', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Fractions',
  'Simplify: \\( \\frac{2x}{4} \\)',
  NULL, '\\( \\frac{x}{2} \\)', '\\( 2x \\)', '\\( \\frac{4}{x} \\)', '\\( \\frac{x}{4} \\)',
  'Reduce 2 and 4 to get \\( \\frac{x}{2} \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Sum',
  'Evaluate: \\( x + y \\) when \\( x = 4 \\) and \\( y = 5 \\)',
  NULL, '9', '20', '5', '4',
  '\\( 4 + 5 = 9 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Difference',
  'What is \\( x - y \\) when \\( x = 10 \\), \\( y = 3 \\)?',
  NULL, '7', '13', '3', '-7',
  '\\( 10 - 3 = 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combining Mixed Terms',
  'Simplify: \\( x + 2 + 3x + 5 \\)',
  NULL, '4x + 7', 'x + 7', '4x + 5', '3x + 2',
  '\\( x + 3x = 4x \\), \\( 2 + 5 = 7 \\)', NOW()
);



INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitution',
  'Evaluate: \\( 3x - 4 \\) when \\( x = 5 \\)',
  NULL, '11', '19', '1', '9',
  '\\( 3 \\times 5 - 4 = 15 - 4 = 11 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Evaluate',
  'Evaluate: \\( 4(x + 1) \\) when \\( x = 2 \\)',
  NULL, '12', '8', '10', '14',
  '\\( 4(2 + 1) = 4 \\times 3 = 12 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Like Terms',
  'Simplify: \\( 2x + 4x \\)',
  NULL, '6x', '8x', '2x^2', 'x + 4x',
  'Combine like terms: \\( 2x + 4x = 6x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Structure',
  'What kind of term is \\( 7 \\) in \\( 3x + 7 \\)?',
  NULL, 'Constant', 'Coefficient', 'Variable', 'Exponent',
  'It does not change and is not attached to a variable', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Expression',
  'Simplify: \\( 2x - x + 6 \\)',
  NULL, 'x + 6', 'x + 5', 'x - 6', '2x + 6',
  '\\( 2x - x = x \\), so expression becomes \\( x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Verbal Expression',
  'Translate: “A number decreased by 4”',
  NULL, '\\( x - 4 \\)', '\\( x + 4 \\)', '\\( 4 - x \\)', '\\( 4x \\)',
  '“Decreased by” means subtraction: \\( x - 4 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute Negative',
  'Simplify: \\( -3(x - 2) \\)',
  NULL, '-3x + 6', '-3x - 6', '3x - 6', '3x + 6',
  'Distribute: \\( -3 \\times x = -3x \\), \\( -3 \\times -2 = +6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Constants',
  'Simplify: \\( x + 7 + 3 \\)',
  NULL, 'x + 10', 'x + 4', 'x + 21', '10x',
  '\\( 7 + 3 = 10 \\), so final is \\( x + 10 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Power of Variable',
  'Evaluate: \\( x^2 \\) when \\( x = 6 \\)',
  NULL, '36', '12', '18', '30',
  '\\( 6^2 = 36 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Comparison',
  'Which expression is equivalent to \\( x + x + x \\)?',
  NULL, '3x', 'x^3', 'x + 3', 'x3',
  'Adding x three times gives \\( 3x \\)', NOW()
);



INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Variable',
  'In the expression \\( 4x + 7 \\), which part is the variable?',
  NULL, 'x', '4', '7', '4x',
  '“x” is the variable that can change', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Coefficient Recognition',
  'What is the coefficient of \\( a \\) in \\( 9a - 2 \\)?',
  NULL, '9', '-2', 'a', '11',
  'The coefficient is the number multiplied by the variable', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Evaluation',
  'Evaluate: \\( -x + 2 \\) when \\( x = 3 \\)',
  NULL, '-1', '5', '-5', '1',
  '\\( -3 + 2 = -1 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Simplification',
  'Simplify: \\( x + x + 5 \\)',
  NULL, '2x + 5', 'x + 5', 'x^2 + 5', '2x + 10',
  '\\( x + x = 2x \\), so final is \\( 2x + 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Phrase',
  'What is the expression for “three times a number plus 2”?',
  NULL, '\\( 3x + 2 \\)', '\\( 3 + x + 2 \\)', '\\( x + 3 + 2 \\)', '\\( x + 5 \\)',
  '“Three times a number” is \\( 3x \\), add 2 gives \\( 3x + 2 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Multiple Variables',
  'Evaluate: \\( 2x + 3y \\) when \\( x = 2, y = 1 \\)',
  NULL, '7', '5', '6', '8',
  '\\( 2 \\times 2 + 3 \\times 1 = 4 + 3 = 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Constant Expression',
  'Simplify: \\( 10 - 4 + x \\)',
  NULL, '6 + x', '14x', '10x', 'x + 4',
  'Simplify constants: \\( 10 - 4 = 6 \\), then add x', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Parentheses',
  'Simplify: \\( x + (3 + 2) \\)',
  NULL, 'x + 5', 'x + 6', '5x', '3x + 2',
  'Inside parentheses is \\( 5 \\), then \\( x + 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Substitute and Multiply',
  'Evaluate: \\( 5(x - 1) \\) when \\( x = 6 \\)',
  NULL, '25', '20', '30', '15',
  '\\( 6 - 1 = 5 \\), \\( 5 \\times 5 = 25 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Components',
  'In \\( 3x + 4 \\), what is the constant term?',
  NULL, '4', '3', 'x', '7',
  'The number not attached to a variable is 4', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Distributive Property',
  'Simplify: \\( 2(x + 4) \\)',
  NULL, '2x + 8', '2x + 4', '2x + 2', 'x + 8',
  'Use distributive property: \\( 2 \\cdot x + 2 \\cdot 4 = 2x + 8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Variable as Placeholder',
  'Which of the following describes a variable?',
  NULL, 'It holds unknown values', 'It is a fixed number', 'It is always positive', 'It cannot be used in equations',
  'A variable can represent different or unknown numbers', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Like Terms',
  'Which of the following are like terms?',
  NULL, '\\( 6x \\) and \\( 2x \\)', '\\( x^2 \\) and \\( x \\)', '\\( x \\) and \\( y \\)', '\\( 3 \\) and \\( 3x \\)',
  'They have the same variable part and exponent', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Constant Evaluation',
  'Evaluate: \\( 2x + 3 \\) when \\( x = 0 \\)',
  NULL, '3', '2', '0', '5',
  'Anything multiplied by 0 is 0, so only constant remains', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Multiple Variables',
  'Simplify: \\( 2x + 3y + x + y \\)',
  NULL, '3x + 4y', '2x + 4y', '3x + 3y', 'x + y',
  'Combine like terms: \\( 2x + x = 3x \\), \\( 3y + y = 4y \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Combine',
  'Simplify: \\( 3(x + 2) + x \\)',
  NULL, '4x + 6', '3x + 2', '3x + 6', 'x + 5',
  'Distribute: \\( 3x + 6 + x = 4x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Term Type',
  'In \\( 8x^2 + 5 \\), what is \\( 8x^2 \\)?',
  NULL, 'A variable term', 'A constant', 'A binomial', 'A linear term',
  'It is a variable term with a square exponent', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Multiplying Constants and Variables',
  'Evaluate: \\( 3x \\) when \\( x = 0 \\)',
  NULL, '0', '3', '1', 'x',
  '\\( 3 \\cdot 0 = 0 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression from Statement',
  'Write an expression for: “Twice a number minus five”',
  NULL, '\\( 2x - 5 \\)', '\\( x - 5 \\)', '\\( x - 10 \\)', '\\( 2x + 5 \\)',
  'Twice a number = \\( 2x \\), minus 5 gives \\( 2x - 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combining Like and Unlike Terms',
  'Simplify: \\( 4x + 3 + 2x + 7 \\)',
  NULL, '6x + 10', '4x + 2x + 10', '6x + 7', '4x + 10',
  'Add like terms: \\( 4x + 2x = 6x \\), \\( 3 + 7 = 10 \\)', NOW()
);


INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Basic Substitution',
  'Evaluate: \\( 5x + 2 \\) when \\( x = 1 \\)',
  NULL, '7', '10', '3', '6',
  '\\( 5 \\cdot 1 + 2 = 5 + 2 = 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Constant',
  'In \\( 7x + 9 \\), what is the constant?',
  NULL, '9', '7x', 'x', '7',
  'The constant is the term without a variable', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distributive Simplification',
  'Simplify: \\( 2(x + 3) + x \\)',
  NULL, '3x + 6', '2x + 3', '3x + 3', 'x + 6',
  'Distribute: \\( 2x + 6 + x = 3x + 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Coefficient',
  'What is the coefficient of \\( x \\) in \\( -5x + 4 \\)?',
  NULL, '-5', '5', '4', 'x',
  'The coefficient is the number multiplied by the variable', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression from Words',
  'Write an expression for: “4 less than twice a number”',
  NULL, '\\( 2x - 4 \\)', '\\( x - 4 \\)', '\\( 4x - 2 \\)', '\\( x + 4 \\)',
  '“Twice a number” is \\( 2x \\), and “4 less” means subtract 4', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Like Terms',
  'Simplify: \\( 7x + 2x + 3 \\)',
  NULL, '9x + 3', '7x + 5x', '10x + 3', '9x + 6',
  'Combine \\( 7x + 2x = 9x \\), add 3: \\( 9x + 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Variable Meaning',
  'What does a variable represent in mathematics?',
  NULL, 'An unknown or changeable value', 'A fixed number', 'Only positive values', 'The answer to every equation',
  'A variable can change or be unknown', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Expression',
  'Simplify: \\( 5 + x + 3 \\)',
  NULL, 'x + 8', '8x', 'x + 5', 'x + 3',
  'Add constants: \\( 5 + 3 = 8 \\), then \\( x + 8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute and Subtract',
  'Simplify: \\( 2(x - 3) \\)',
  NULL, '2x - 6', '2x + 6', 'x - 6', '2x - 3',
  'Distribute: \\( 2 \\cdot x = 2x, 2 \\cdot -3 = -6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Evaluation',
  'Evaluate: \\( 3x + 4 \\) when \\( x = 2 \\)',
  NULL, '10', '6', '9', '8',
  '\\( 3 \\cdot 2 + 4 = 6 + 4 = 10 \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Statement',
  'Which expression represents “10 decreased by a number \\( x \\)”?',
  NULL, '10 - x', 'x - 10', '10x', 'x + 10',
  '“Decreased by” implies subtraction: \\( 10 - x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Negative',
  'Simplify: \\( x - (-3) \\)',
  NULL, 'x + 3', 'x - 3', '-x - 3', '-x + 3',
  'Subtracting a negative becomes addition', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Simplify Complex Expression',
  'Simplify: \\( 2x + 4 + 3x + 1 \\)',
  NULL, '5x + 5', '6x + 4', '5x + 3', '2x + 7',
  'Combine like terms: \\( 2x + 3x = 5x \\), \\( 4 + 1 = 5 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Constants',
  'Simplify: \\( x + 5 - 2 \\)',
  NULL, 'x + 3', 'x + 7', '3x', 'x - 3',
  'Combine constants: \\( 5 - 2 = 3 \\), then add x', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute Negative',
  'Simplify: \\( -3(x + 2) \\)',
  NULL, '-3x - 6', '-3x + 6', '-3x - 2', '3x - 6',
  'Distribute negative: \\( -3x - 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Linear Expression',
  'Which of the following is a linear expression?',
  NULL, '4x + 7', 'x^2 + 1', 'x^3 - 4', '3x^2 + 2x',
  'Linear means no exponents > 1', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Substitution',
  'Evaluate: \\( x^2 + 3 \\) when \\( x = 2 \\)',
  NULL, '7', '5', '6', '9',
  '\\( 2^2 + 3 = 4 + 3 = 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Use Multiple Substitutions',
  'Evaluate: \\( 2a + 3b \\) when \\( a = 3 \\), \\( b = 2 \\)',
  NULL, '12', '11', '10', '13',
  '\\( 2 \\cdot 3 + 3 \\cdot 2 = 6 + 6 = 12 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Add Expressions',
  'Add: \\( 3x + 2 \\) and \\( 5x + 4 \\)',
  NULL, '8x + 6', '8x + 2', '3x + 4', '5x + 2',
  'Add coefficients: \\( 3x + 5x = 8x \\), \\( 2 + 4 = 6 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Parentheses',
  'Evaluate: \\( (x + 2)^2 \\) when \\( x = 1 \\)',
  NULL, '9', '3', '4', '6',
  '\\( (1 + 2)^2 = 3^2 = 9 \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Basic Evaluation',
  'Evaluate: \\( 6x - 2 \\) when \\( x = 2 \\)',
  NULL, '10', '8', '6', '12',
  '\\( 6 \\cdot 2 - 2 = 12 - 2 = 10 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Word to Expression',
  'Translate to an expression: “3 less than the product of 4 and x”',
  NULL, '4x - 3', '3 - 4x', '4 - 3x', '3x - 4',
  '“Product of 4 and x” is \\( 4x \\); “3 less” means subtract 3', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate Squared Variable',
  'Evaluate: \\( x^2 + x \\) when \\( x = 3 \\)',
  NULL, '12', '9', '6', '15',
  '\\( 3^2 + 3 = 9 + 3 = 12 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Combine Terms',
  'Simplify: \\( 6x + 4x - 3 \\)',
  NULL, '10x - 3', '12x - 3', '10x + 3', '6x - 3',
  'Combine \\( 6x + 4x = 10x \\), keep \\( -3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Factoring Simple',
  'Factor: \\( 6x + 12 \\)',
  NULL, '6(x + 2)', '3(x + 4)', '2(x + 6)', 'x(6 + 12)',
  'GCF is 6: \\( 6(x + 2) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Variable Identification',
  'In \\( 2a + 5b \\), how many variables are there?',
  NULL, '2', '1', '0', '3',
  '“a” and “b” are both variables', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute Over Subtraction',
  'Simplify: \\( 4(x - 2) \\)',
  NULL, '4x - 8', '4x + 8', 'x - 8', '4x - 2',
  'Distribute: \\( 4 \\cdot x - 4 \\cdot 2 = 4x - 8 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Zero Multiplication',
  'Evaluate: \\( 0 \\cdot x + 3 \\)',
  NULL, '3', '0', 'x', '3x',
  'Zero times anything is zero; \\( 0 + 3 = 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Variable with Power',
  'Evaluate: \\( x^2 \\) when \\( x = 5 \\)',
  NULL, '25', '10', '15', '5',
  '\\( 5^2 = 25 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Substitution',
  'Evaluate: \\( 2x + 1 \\) when \\( x = -2 \\)',
  NULL, '-3', '-5', '-1', '3',
  '\\( 2 \\cdot -2 + 1 = -4 + 1 = -3 \\)', NOW()
);

INSERT INTO `numerical` (
  category, type, word, question, image, correct_answer,
  wrong_answer1, wrong_answer2, wrong_answer3, explanation, created_at
) VALUES
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression with Two Variables',
  'Evaluate: \\( 3a + 2b \\) when \\( a = 2 \\), \\( b = 4 \\)',
  NULL, '14', '10', '12', '16',
  '\\( 3 \\cdot 2 + 2 \\cdot 4 = 6 + 8 = 14 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Identify Like Terms',
  'Which are like terms in: \\( 4x + 5 + 3x + 2 \\)?',
  NULL, '4x and 3x', '5 and 3x', '5 and x', 'x and 2',
  'Like terms have the same variable part; \\( 4x \\) and \\( 3x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Negative Squared Variable',
  'Evaluate: \\( (-x)^2 \\) when \\( x = 3 \\)',
  NULL, '9', '-9', '6', '3',
  'Negative squared is positive: \\( (-3)^2 = 9 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Use Parentheses',
  'Evaluate: \\( (x + 2)(x - 2) \\) when \\( x = 4 \\)',
  NULL, '12', '4', '8', '0',
  '\\( (4 + 2)(4 - 2) = 6 \\cdot 2 = 12 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Expression Matching',
  'Which expression means “the sum of a number and 7”?',
  NULL, 'x + 7', '7 - x', 'x - 7', '7x',
  'Sum means addition: \\( x + 7 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Evaluate with Decimal',
  'Evaluate: \\( 0.5x + 1 \\) when \\( x = 4 \\)',
  NULL, '3', '2', '5', '4',
  '\\( 0.5 \\cdot 4 + 1 = 2 + 1 = 3 \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Subtract Variables',
  'Simplify: \\( 5x - 2x + 1 \\)',
  NULL, '3x + 1', '7x + 1', '2x + 1', 'x + 1',
  '\\( 5x - 2x = 3x \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Translate Verbal to Algebra',
  'What expression represents: “twice the sum of a number and 4”?',
  NULL, '2(x + 4)', 'x + 4', '2x + 4', '(2x) + 4',
  '“Twice the sum” means multiply the whole sum: \\( 2(x + 4) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Factor from Expression',
  'Factor: \\( 10x + 15 \\)',
  NULL, '5(2x + 3)', '5(x + 3)', '2(5x + 3)', '10(x + 1.5)',
  'GCF is 5: \\( 5(2x + 3) \\)', NOW()
),
(
  'Foundations and Basics', 'Variables and Expressions', 'Distribute Negative Outside',
  'Simplify: \\( -2(x - 5) \\)',
  NULL, '-2x + 10', '-2x - 10', '-2x + 5', '2x + 10',
  'Distribute negative: \\( -2x + 10 \\)', NOW()
);
