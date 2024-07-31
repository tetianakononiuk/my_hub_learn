-- 1. Вывести количество городов для каждой страны. Результат должен содержать CountryCode,
--  CityCount (количество городов в стране). Поменяйте запрос с использованием джойнов так,
--  чтобы выводилось название страны вместо CountryCode. 
use world;
select t2. Name as Country_name, 
count(t1.CountryCode) over (partition by t1.CountryCode) as CityCount
from city as t1
inner join country  as t2
on t1.CountryCode = t2.Code;

-- 2. Используя оконные функции, вывести список стран с продолжительностью жизнью и средней
--  продолжительностью жизни. 
select Name, LifeExpectancy, 
round(avg(LifeExpectancy) over(), 2) as avg_LifeExpectancy
from country;



-- 3. Используя ранжирующие функции, вывести страны по убыванию продолжительности жизни.

select Name, LifeExpectancy,
dense_rank() over(order by LifeExpectancy desc) as rank_Life_Expectancy
from country;

-- 4. Используя ранжирующие функции, вывести третью страну с самой высокой продолжительностью жизни.
select *
from(
select Name, LifeExpectancy,
dense_rank() over(order by LifeExpectancy desc) as rank_Life_Expectancy
from country) t1
where rank_Life_Expectancy = 3;
