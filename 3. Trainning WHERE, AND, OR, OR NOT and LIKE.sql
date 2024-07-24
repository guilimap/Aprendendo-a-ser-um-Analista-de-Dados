SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Tom'
; 
SELECT * 
FROM parks_and_recreation.employee_salary 
WHERE salary >= 50000
;
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age >= 30  
AND gender = 'male' 
;
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age >= 40
OR NOT gender = 'male';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age >= 40
AND gender = 'Male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female'
OR age >= 30;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Ann' AND age = 35) OR age > 60;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name 
LIKE 'a%'; 

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name 
LIKE 'a__';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date
LIKE '199%';
