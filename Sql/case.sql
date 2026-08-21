-- CASE STATMENT

SELECT first_name, last_name,
CASE
	WHEN age <= 30 THEN 'Young'
	WHEN age BETWEEN 31 AND 50 THEN 'adult'
    WHEN age > 50 THEN 'old'
END AS Age_Bracket
FROM employee_demographics;

select first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
	WHEN salary >= 50000 THEN salary * 1.07
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.10
END AS bonus
FROM employee_salary;