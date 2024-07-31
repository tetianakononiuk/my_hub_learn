-- 1. Вывести текущую дату и время.
select now() as date;

-- 2. Вывести текущий год и месяц
select year(now()) as year;
select month(now()) as month;

-- 3. Вывести текущее время
select time(now()) as time;

-- 4. Вывести название текущего дня недели
select dayname(now()) as dayname;

-- 5. Вывести номер текущего месяца
select extract(month from now()) as number_month;

-- 6. Вывести номер дня в дате “2020-03-18”

select day('2020-03-18');

-- 7. Подключиться к базе данных shop (которая находится на удаленном сервере).
USE shop;

-- 8. Определить какие из покупок были совершены апреле (4-й месяц)
select *
from ORDERS 
where month(ODATE) = 4;

-- 9. Определить количество покупок в 2022-м году
select  COUNT( * ) as count_purchases
from ORDERS 
where year(ODATE) = 2022;

-- 10. Определить, сколько покупок было совершено в каждый день. Отсортировать строки в
-- порядке возрастания количества покупок. Вывести два поля - дату и количество покупок
select ODATE, count(*) as count_purchases
from ORDERS
group by ODATE
order by count_purchases desc;

-- 11. Определить среднюю стоимость покупок в апреле
select round(avg(AMT), 2) as avg_amt
from ORDERS
where month(ODATE) = 4;