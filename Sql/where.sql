select * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie'
;

select * 
FROM employee_salary
WHERE salary >= 50000
;

select * 
FROM employee_salary
WHERE salary <= 50000
;

select * 
FROM employee_demographics
WHERE gender = 'female'
;

select * 
FROM employee_demographics
WHERE gender != 'female'
;

select * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

-- and or not -- logical operators 

select * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

select * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

select * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) or age > 55
;

-- LIKE
-- % & _
select * 
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

select * 
FROM employee_demographics
WHERE first_name LIKE '%er%' ;

select * 
FROM employee_demographics
WHERE first_name LIKE 'a___%';

select * 
FROM employee_demographics
WHERE birth_date LIKE '1989%';