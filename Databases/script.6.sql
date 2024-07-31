-- 1.Подключитесь к базе данных world (которая находится на 
-- удаленном сервере). 
use world;

-- 2.Выведите список стран с языками, на которых в них говорят.
 select c.name, cl.language
 from country as c
 inner join countrylanguage as cl
 on c.code = cl.countrycode;
 
 -- 3.Выведите список городов с их населением и названием стран
 select c.name as city, c.population, ct.name as country
 from city as c
 join country as ct
 on ct.code = c.countrycode;
 
 -- 4. Выведите список городов в South Africa
 select c.name as city
 from city as c 
 join country as ct
 on ct.code = c.countrycode 
 where countrycode = 'ZAF';
 
 -- 5.Выведите список стран с названиями столиц. Подсказка: в таблице country есть поле Capital,
 -- которое содержит номер города из таблицы City. 
 select ct.name as country, c.name as capital
 from country as ct
 inner join city as c
 on c.id = ct.capital;
 
 -- 6. Измените запрос 4 таким образом, чтобы выводилось население в столице. 
 select c.name as capital, c.population
 from country as ct
 inner join city as c
 on c.id = ct.capital;
 
 -- 7. Напишите запрос, который возвращает название столицы United States
 select c.name as capital
 from country as ct
 inner join city as c
 on c.id = ct.capital
 and ct.name = 'United States';
 
 -- 8. Используя базу hr_data.sql, вывести имя, фамилию и город сотрудника.
 use hr;
select e.first_name, e.last_name, l.city
from employees as e
left join departments as d
on e.department_id = d.department_id
left join locations as l
on d.location_id = l.location_id;

-- 9. Используя базу hr_data.sql, вывести города и соответствующие городам страны.

select l.city, c.country_name
from locations as l
inner join countries as c
on l.country_id = c.country_id;

 