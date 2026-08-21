
with cte_example (GENDER, AVG_SAL, MAX_SAL, MIN_SAL, COUNT_SAL) as
(select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from cte_example
;


with cte_example as
(select employee_id, gender, birth_date
from employee_demographics dem
where birth_date > '1985-01-01'
),
cte_example2 as
(select employee_id, salary
from employee_salary
where salary > 50000
)
select *
from cte_example
join cte_example2 
	on cte_example.employee_id = cte_example2.employee_id
;