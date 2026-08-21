SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 4
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3,1
;

SELECT gender ,AVG(age)  avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;