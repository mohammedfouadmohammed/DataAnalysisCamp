SELECT gender, AVG(salary)
FROM employee_demographics DEM
JOIN employee_salary SAL
	ON  DEM.employee_id = SAL.employee_id
    GROUP BY gender;
    
SELECT DEM.first_name, DEM.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics DEM
JOIN employee_salary SAL
	ON  DEM.employee_id = SAL.employee_id;
    
SELECT DEM.first_name, DEM.last_name, gender, salary, 
SUM(salary) OVER(PARTITION BY gender ORDER BY DEM.employee_id) AS ROLLING_TOTAL
FROM employee_demographics DEM
JOIN employee_salary SAL
	ON  DEM.employee_id = SAL.employee_id;
    
    
SELECT DEM.employee_id, DEM.first_name, DEM.last_name, gender, salary, 
row_number() over(PARTITION BY gender order by salary desc),
rank() over(PARTITION BY gender order by salary desc),
dense_rank() over(PARTITION BY gender order by salary desc)
FROM employee_demographics DEM
JOIN employee_salary SAL
	ON  DEM.employee_id = SAL.employee_id;    