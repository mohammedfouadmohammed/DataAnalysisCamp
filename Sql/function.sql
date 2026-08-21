-- STRING FUCTION

SELECT LENGTH('MIDO');

SELECT first_name, LENGTH(first_name) 
FROM employee_demographics
ORDER BY 2
;

SELECT UPPER('mido');
SELECT LOWER('MIDO');

SELECT TRIM('  MIDO   ');
SELECT RTRIM('  MIDO   ');
SELECT LTRIM('  MIDO   ');

select first_name,
 LEFT(first_name,4),
 RIGHT(first_name,4),
 SUBSTRING(first_name,3,2),
 birth_date,
 SUBSTRING(birth_date,1,4) AS year
FROM employee_demographics;


SELECT first_name, REPLACE(first_name,'Mark','Mido')
FROM employee_demographics;


SELECT LOCATE('i','mido');

SELECT first_name,last_name,
CONCAT(first_name,' ',last_name)
FROM employee_demographics;