-- <agregate_func(column) OVER (logic group partition <column> order by <column> (asc \ desc))>
select department_id, count(employee_id) as emp_count
from employees
group by department_id;

select
department_id,
count(employee_id) over (partition by department_id) as emp_count
from employees;

-- <agregate_func(column)> OVER (logic group partition <column> order by <column> (asc \ desc))


-- Найти количество сотрудников у каждого менеджера. Вывести manager_id и employees_cnt
use hr;

select manager_id, count(employee_id) as employee_cnt
from employees
group by manager_id;

select manager_id, count(employee_id) over(partition by manager_id) as employee_cnt
from employees;

-- Работаем с базой World. Выведите седьмой по густонаселенности город. 
-- Подсказка: использовать функцию rank() и оконные функции.

use world;
select * 
from
(select
Name,
CountryCode,
Population,
dense_rank() over(order by Population desc) as rank_pop
from city ) as t1
where rank_pop = 7;

-- Напишите запрос для определения разницы в продолжительности жизни между текущей страной
 -- и страной с самой высокой продолжительностью жизни.
 
 select Name, LifeExpectancy, max(LifeExpectancy) over() as max_Life_Expectancy,
 -- max(LifeExpectancy)over() - LifeExpectancy as Life_Ex_dif
 round(LifeExpectancy / max(LifeExpectancy) over() * 100, 3) as Life_Ex_dif
 from country;
 
 -- Выполните ранжирование стран по средней численности населения
 select co.Code, avg(ci.Population),
 dense_rank () over(order by avg(ci.Population) desc)
 from country as co
 inner join city as ci
 on ci.CountryCode = co.Code
 group by co.Code;
 
 select Co.Code, avg(Ci.Population) ,
dense_rank () over (order by avg(Ci.Population) DESC)
from country as Co
inner join city as Ci
on Ci.CountryCode = Co.Code
group by Co.Code;


-- На основании предыдущего запроса выведите топ 5 стран по средней
-- численности населения (Используйте LIMIT)
select Co.Code, if(Ci.Population is null, 0, avg(Ci.Population)) as Population,
dense_rank () over (order by avg(Ci.Population) DESC)
from country as Co
left join city as Ci
on Ci.CountryCode = Co.Code
group by Co.Code
Limit 5;

-- На основании предыдущего запроса выведите топ 5 стран по средней
 -- численности населения (используйте вложенный запрос)
select *
from (
select Co.Code, if(Ci.Population is null, 0, avg(Ci.Population)) as Population,
dense_rank () over (order by avg(Ci.Population) DESC) as rank_pop
from country as Co
left join city as Ci
on Ci.CountryCode = Co.Code
group by Co.Code
) as t1 where rank_pop <= 5;

-- Напишите запрос для определения доли населения города от общей численности населения 
-- страны и проведите ранжирование городов в пределах каждой страны

select Name, CountryCode, Population,
sum(Population) over(partition by CountryCode) as country_pop,
round(Population /sum(Population) over (partition by CountryCode) * 100, 3) as pop_perc,
dense_rank() over(partition by CountryCode order by Population desc ) as pop_rank
from city; 

-- Написать SQL-запрос для выбора городов, занимающих первое место по населению
-- в своих странах и превышающих среднее население по всем городам.
select *
from(
select Name, CountryCode, Population,
dense_rank() over(partition by CountryCode order by Population desc) as city_rank,
round(avg(Population) over(), 2) as avg_pop
from city) as t1
where city_rank = 1 and Population > avg_pop;

select *
from
(select Name, CountryCode, Population,
dense_rank() over (partition by CountryCode order by Population desc) as city_rank,
round(avg(Population) over(), 2) as avg_pop
from city) as t1
where city_rank = 1 and Population > avg_pop
;

-- Выведите список форм правления (GovernmentForm) c количеством стран, где есть эта форма правления. 
select GovernmentForm, Region, Continent, Name, if (LifeExpectancy is null, 0,LifeExpectancy)
as LifeExpectancy,
count(Code) over(partition by GovernmentForm) as Country_count
from country
order by GovernmentForm;

-- Выведите второго по зарплате сотрудника в каждом департаменте.
use hr;
select *
from(
select d.department_id, e.first_name,
dense_rank() over(partition by e.department_id order by salary desc) as rank_s
from employees as e
left join departments as d
on d.department_id = e.employee_id
) as t1
where rank_s = 2; 


select * from ( 
select e.first_name, d.department_name,
dense_rank() over(partition by e.department_id order by salary desc)as rank_s
from employees as e
left join departments as d
on e.department_id=d.department_id) T1
where rank_s = 2
;
