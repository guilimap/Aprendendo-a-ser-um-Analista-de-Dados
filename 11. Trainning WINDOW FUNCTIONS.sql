WITH CTE_Example AS(
SELECT gender, AVG(salary) avg_salary, MAX(salary) max_salary, MIN(salary) min_salary, COUNT(salary) count_salary
FROM employee_demographics d
JOIN employee_salary s
	ON d.employee_id = s.employee_id
GROUP BY gender
)
SELECT AVG(avg_salary)
FROM CTE_Example
;

WITH CTE_Example AS(
SELECT employee_id, gender, birth_date 
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id
FROM employee_salary
WHERE salary > 50000
)
SELECT * 
FROM CTE_Example C1
JOIN CTE_Example2 C2
	ON C1.employee_id = C2.employee_id
;