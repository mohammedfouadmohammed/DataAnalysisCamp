SELECT * 
FROM employee_demographics
WHERE employee_id IN
				(select employee_id 
                  FROM employee_salary
                  where dept_id = 1)
;


SELECT first_name,
 salary,
(SELECT AVG(salary) 
FROM employee_salary) AS AVG_SALARY
FROM employee_salary;


SELECT AVG(`MAX(age)`), AVG( `MIN(age)`), AVG(`COUNT(age)`)
FROM
(SELECT gender, AVG(age), MAX(age), MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender) AS TAB;