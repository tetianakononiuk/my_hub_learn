-- 1.Подключитесь к базе данных hr (которая находится на удаленном сервере). 
use hr;
-- 2.Выведите количество сотрудников в базе
select count(employee_id) as total_employees
from employees;
-- 3. Выведите количество департаментов (отделов) в базе
select count(department_id) as total_departments
from departments;
-- 4. Подключитесь к базе данных World (которая находится на удаленном сервере). 
use world;
-- 5.Выведите среднее население в городах Индии (таблица City, код Индии - IND)
select avg(Population) as average_population
from city
where CountryCode = 'IND';
-- 6.Выведите минимальное население в индийском городе и максимальное.
select
	name,
	min(Population) as min_population,
    max(population) as max_population
from city
where CountryCode = 'IND';    
-- 7. Выведите самую большую площадь территории. 
select name, max(SurfaceArea) as max_SurfaceArea
from country;
-- 8. Выведите среднюю продолжительность жизни по странам. 
select round(avg(LifeExpectancy), 2) as average_life_expectancy
from country;

-- 9. Найдите самый населенный город (подсказка: использовать подзапросы)
select name, population
from city
where Population = (select max(Population)
from city);


