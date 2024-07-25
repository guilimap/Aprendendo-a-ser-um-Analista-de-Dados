SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC 
LIMIT 3;

SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;