use hr;

select str_to_date('25,07,2020', '%d,%m,%Y');

select str_to_date('2013-03-17T14:25:39.123', '%Y-%m-%dT%H:%i:%s.%f');

select date_format(NOW(), '%Y_%m_%d | %H - %i - %s');

select datediff('2023-02-01', '2023-01-01');

select timestampdiff(day, '2003-02-01', '2003-05-01');
select timestampdiff(month, '2003-02-18', '2003-05-01');
select timestampdiff(minute, '2003-02-01', '2003-05-01 12:05:55');
select timestampdiff(week, '2003-02-01', '2003-05-01');

-- Используя базу данных hr, написать запрос, который отображает сотрудников, нанятых в 2005 году.

select *
from hr.employees
where hire_date between 
'2005-01-01' and '2005-12-31';


SELECT * FROM hr.employees
where hire_date between
str_to_date('01-2005-01','%d-%Y-%m')  and 
str_to_date('31-2005-12','%d-%Y-%m');

use shop;
-- Написать запрос, который отображает среднюю AMT (сумма заказа) в 2022 году 

select avg(AMT) as avg_amount
from ORDERS
where date_format(ODATE, '%Y') = 2022;






