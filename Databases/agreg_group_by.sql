use world;

-- Создайте SQL запрос, который позволяет вывести информацию о населении стран в двух
 -- столбцах: 'CountryCode' и 'Население', где 'Население' представляет собой суммарное
 -- количество жителей всех городов в каждой стране.
 
 select *
 from country;
 
 select
CountryCode,
SUM(Population)
From city 
group by CountryCode;

-- Отобразите результат аналогично заданию 1, однако вместо 'CountryCode'
 -- включите названия стран. Для этого примените операцию JOIN между таблицами 'city' 
--  и 'country', используя условие соединения 'city.CountryCode = country.Code'.

 
 select ct.name,
 sum(c.population) as country_population
 from city as c
 inner join country as ct
 on c.CountryCode = ct.Code 
 group by countryCode;
 
 -- Предоставьте список стран, указав количество используемых языков в каждой из них,
 -- выводя отчёт в формате (CountryCode, COUNT(Language)). 
 
 select
CountryCode,
count(Language) as count_lng
from countrylanguage
group by CountryCode
order by count_lng desc;


 select
cn.Name,
cl.CountryCode,
count(cl.Language) as count_lng
from countrylanguage as cl
join country as cn
on cl.CountryCode = cn.Code
group by CountryCode
order by count_lng desc;

select
cn.Name,
cl.CountryCode,
count(cl.Language) as count_lng
from countrylanguage as cl
join country as cn
on cl.CountryCode = cn.Code
where cl.IsOfficial=1
group by CountryCode
order by count_lng desc
;
 
 use hr;
 -- Выведите количество сотрудников, работающих в отделах Marketing и IT, используя
-- операцию JOIN между таблицами "employees" и "departments" по полю
-- "department_id"

select 
	count(e.employee_id),
	d.department_name
from hr.employees as e
join departments as d
on e.department_id = d.department_id
where d.department_name in ('Marketing','IT')
group by d.department_name;

-- Посчитайте сумму зарплат сотрудников, работающих в IT

select sum(salary) as total_income
from employees
where department_id = (select department_id from departments where department_name = 'IT');

 select sum(e.salary) as total_income, d.department_name
from employees as e
inner join departments as d
on e.department_id = d.department_id
where d.department_name = 'IT';

use students;

 
 