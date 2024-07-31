use 310524ptm_Kononiuk;
-- домашнее задание 4
-- 1. Вывести все заказы, отсортированные по убыванию по стоимости
select * 
from orders
order by price desc;
 
 -- 2. Вывести всех заказчиков, у которых почта зарегистриварована на gmail.com
 select customers_id, first_name, last_name
 from customers
 where e_mail like '%@gmail.com';
 
 -- 3. Вывести заказы, добавив дополнительный вычисляемый столбец status, который вычисляется по 
-- стоимости заказа и имеет три значения: low, middle, high. 
select *,
 case
 when price < 60 then 'low'
 when price between 60 and 90 then 'mid'
else 'high'
end as status
from orders;

-- 4. Вывести заказчиков по убыванию рейтинга. 

select customer_id,
 case
 when price < 60 then '1'
 when price between 60 and 90 then '2'
else '3'
end as rating
from orders
order by rating desc;


-- 5. Вывести всех заказчиков из города на ваш выбор. 

select *
from customers
where city like 'Kyiv';

-- 6. Написать запрос, который вернет самый часто продаваемый товар. 

select item_id, count(item_id) as cnt
from orders
group by item_id
order by cnt desc
limit 1;

-- 7. Вывести список заказов с максимальной скидкой. !!!

select *
from orders
where discounter_price = (select max(discounter_price) from orders);

-- 8. Ответьте в 1 предложении: как вы определите скидку? 
-- Скидка - это разница между нормальной ценой и скидочной ценой товвра.

-- 9.Ответьте в 1 предложении: может ли это быть разница между нормальной 
-- ценой и скидочной ценой? 
-- Да, это может быть разница между обычной ценой товара и ценой со скидкой.

-- 10.Написать запрос, который выведет все заказы с дополнительным столбцом 
-- процент_скидки, который содержит разницу в процентах между нормальной и скидочной ценой?
select *, 
round((price - discounter_price)/price *100, 2) as percent_ount
from orders;
        






