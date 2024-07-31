select 
	first_name, 
	last_name
from hr.employees
where salary = (select max(salary) from hr.employees);

-- Используя базу hr_data.sql, найти самую высокую зарплату.
select max(salary) as max_salary
from hr.employees;

select * from hr.employees;

-- Найти количество сотрудников.
-- Найти имя и фамилию сотрудника с самой высокой зарплатой.

select count(last_name)
from hr.employees;
 select first_name, last_name
 from hr.employees
 where salary = (select max(salary) from hr.employees);
 
-- Найти среднюю зарплату по компании.
select avg(salary) as avg_salary
from hr.employees;

-- Найти сотрудников, у которых зарплата меньше средней зарплаты по компании.

select *
from hr.employees
where salary < (select avg(salary) from hr.employees);

-- Найти количество департаментов, в которых никто не работает.
select count(*) as summ
from hr.departments as d
right join hr.employees as e
on d.department_id = e.department_id
where e.department_id is null;

-- Найти среднюю зарплату в департаменте с id 90.

select
department_id,
round(avg(salary),2)
from hr.employees
where department_id = 90;

-- Найти самую большую зарплату среди сотрудников, работающих 
-- в департаментах с id 70 и 80.

select
max(salary), department_id
from hr.employees
where department_id in (70, 80);

select
max(salary)
from 
hr. employees
where department_id = 70;

-- посчитайте количество людей на каждой позиции (job_id)

select job_id, count(employee_id) as count_of_employees
from hr.employees 
group by job_id;

-- выведите максимальную и минимальную зарплату по отделу
select
d.department_name,
avg(e.salary) as  avg_salary,
max(e.salary) as  max_salary,
min(e.salary) as  min_salary
from hr.employees as e
inner join hr.departments as d
on d.department_id = e.department_id
group by d.department_name;