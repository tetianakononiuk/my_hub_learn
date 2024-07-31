-- 1. Подключиться к базе данных world
USE world;

-- 2. Вывести население в каждой стране. Результат содержит два поля: CountryCode,
-- sum(Population). Запрос по таблице city.

select CountryCode, sum(Population) as sum_population
from city
group by CountryCode;

-- 3. Изменить запрос выше так, чтобы выводились только страны с населением более 3 млн
-- человек.
select CountryCode, sum(Population) as sum_population
from city
group by CountryCode
having sum_population > 3000000;

-- 4. Сколько всего записей в результате?

select count(*) as count_of_records
from(
 select CountryCode, sum(Population) as sum_population
 from city
 group by CountryCode
 having sum_population > 3000000
) as  t1;

-- 5. Поменять запрос выше так, чтобы в результате вместо кода страны выводилось ее название.

select ct.Name as country_name,
sum(c.Population) as sum_population
from city c
inner join country ct
on c.CountryCode = ct.Code
group by c.CountryCode
having sum_population > 3000000;

-- 6. .Вывести количество городов в каждой стране (CountryCode, amount of cities).

select  CountryCode, count(*) as amount_of_cities
from city
group by CountryCode;

-- 7. Поменять запрос так, чтобы вместо кодов стран, было названия стран.

select  ct.Name AS CountryName, COUNT(*) AS AmountOfCities
FROM city c
inner join country ct
on c.CountryCode = ct.Code
group by c.CountryCode;

-- 8. Поменять запрос так, чтобы выводилось среднее количество городов в стране. Подсказка:
-- разделите задачу на несколько подзадач. Например, сначала вывести код страны и количество
-- городов в каждой стране.  Затем сделать join получившегося результата с запросом, где высчитывается 
-- среднее от количества городов. Потом добавить join, который добавит имена стран, вместо кода. 

select CountryCode, count(Name) as city_count
from city
group by CountryCode;

select floor(avg(cc.city_count)) as average_cities
from(select CountryCode, count(Name) as city_count
from city
group by CountryCode
) as cc;


