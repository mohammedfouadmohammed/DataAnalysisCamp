SELECT *
FROM employee_demographics;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
;

SELECT gender, AVG(age), MAX(age), MIN(age) , COUNT(age)
FROM employee_demographics
GROUP BY gender;


-- ORDER BY

SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender , age DESC;