-- 1 
select *
from hr.employees;
-- 2 
select salary
from hr.employees;
-- 3 
select 
case
when salary > 10000 then '1'
else '0'
end as SALARY_GROUP
from hr.employees;
-- 4
-- Вы водиться только один столбец потому что, в запросе
-- мы выбрали только один столбец и назвали его SALARY_GROUP
-- 5
select  first_name,
case 
when salary > 10000 then '1'
else '0'
end as SALARY_GROUP
from hr.employees;
-- 6
SELECT 
avg(
	case
		when department_id = 60 or department_id = 90 or department_id = 100 
		then salary
		else null
	end) as avg_dp60_90_100
from hr.employees;

-- 7
select first_name, last_name,
case 
	when salary > 10000 then 'junior'
    when salary between 10000 and 15000 then 'mid'
    else 'senior'
    end as level_
from hr.employees;
-- 8
select job_id,
case 
	when max_salary > 10000 then 'high_payer'
    else 'low_payer'
    end as payer_rank
from hr.jobs;
-- 9
select job_id,
if( max_salary > 10000 , 'high_payer','low_payer')
as payer_rank
from hr.jobs;
-- 10
select job_id, max_salary,
if( max_salary > 10000 , 'high_payer','low_payer')
as payer_rank
from hr.jobs
order by max_salary desc;
