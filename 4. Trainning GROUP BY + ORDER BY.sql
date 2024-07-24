-- GROUP BY

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT dept_id,  AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY dept_id
;


SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary
;

-- ORDER BY

SELECT age, gender
FROM parks_and_recreation.employee_demographics
ORDER BY age 
;

