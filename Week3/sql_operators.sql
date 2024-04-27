-- Using the addition operator
SELECT salary + allowance FROM employee;

SELECT *
FROM employee
WHERE salary + allowance = 25000;


-- Using the subtraction operator
SELECT salary - tax FROM employee;

SELECT *
FROM employee
WHERE salary - tax = 50000;

-- multiplication operator
SELECT *
FROM employee
WHERE tax * 2 = 4000;

-- division operator
SELECT allowance / salary * 100 FROM employee;

-- modulus operator
SELECT hours % 2 FROM employee;