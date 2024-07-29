-- UNIONS

SELECT first_name, last_name, 'Old' AS LABEL 
FROM parks_and_recreation.employee_demographics
WHERE age > 50
UNION
SELECT first_name, last_name, 'Highly paid employee' AS Label
FROM employee_salary
WHERE salary > 700000
;
