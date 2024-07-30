SELECT first_name, 
last_name, 
age,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
END AS 'Oldness'
FROM employee_demographics;

SELECT first_name, last_name,
CASE 
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
    WHEN dept_id = 6 THEN salary * 1.10
END AS 'Salary + Bonus',
CASE
	WHEN dept_id = 6 THEN salary * 1.10
END AS 'Salary + Bonus'
FROM employee_salary;