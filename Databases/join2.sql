-- Выведите имена всех продавцов. Предусмотрите также в выборке имена их боссов,
 -- сформировав атрибут boss_name. В выборке должно присутствовать два атрибута — sname, boss_name.

select p.SNAME, b.SNAME as boss_name
from SELLERS p
left join SELLERS b 
on p.BOSS_ID=b.SELL_ID ;

-- Выведите имена покупателей, которые совершили покупку на сумму больше 1000 условных единиц.
-- В выборке должно присутствовать два атрибута — cname, amt.

select c.cname , o.amt
from CUSTOMERS as c
inner join ORDERS as o
on c.CUST_ID=o.CUST_ID
and o.AMT > 1000;

-- Выведите имена покупателей, которые сделали заказ.
-- Предусмотрите в выборке также имена продавцов.
-- Примечание: покупатели и продавцы должны быть из разных городов.
-- В выборке должно присутствовать два атрибута — cname, sname.

select cs.cname, s.sname, cs.city, s.city
from CUSTOMERS as cs
inner join ORDERS as o
on cs.CUST_ID = o.CUST_ID
inner join SELLERS as s
on s.SELL_ID=o.SELL_ID
where s.city <> cs.city;

-- Напишите запрос, который вернет выборку full join, используя таблицы CUSTOMERS
 -- и ORDERS (по ключу CUST_ID). В выборке должно присутствовать два атрибута — cname,
 -- order_id.
 select cs.CNAME, o.ORDER_ID
 from CUSTOMERS as cs
 left join ORDERS as o
 on cs.CUST_ID = o.CUST_ID
 union 
select cs.CNAME, o.ORDER_ID
 from CUSTOMERS as cs
 right join ORDERS as o
 on cs.CUST_ID = o.CUST_ID;
 
 -- Для каждого сотрудника выведите разницу между комиссионными его босса и его собственными.
 -- Если у сотрудника босса нет, выведите NULL.
-- Вывести : sname, difference.
select sp.sname, sp.COMM - sb.COMM as difference
from SELLERS sp
left join SELLERS sb
on sp.BOSS_ID=sb.SELL_ID;
-- Выведите пары покупателей и обслуживших их продавцов из одного города.
-- Вывести: sname, cname, city

select s.sname, c.cname, c.city
from CUSTOMERS as c
join ORDERS as o
on c.CUST_ID=o.CUST_ID
join SELLERS as s
on o.SELL_ID = s.SELL_ID
where c.city = s.city;



