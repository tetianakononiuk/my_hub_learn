use hr;
-- Задание 1
select * from employees where job_id = 'IT_PROG';
-- Задание 2
select * from employees where job_id = 'AD_VP';
-- Задание 3
SELECT * from employees where job_id = 'IT_PROG';
SELECT * from employees where job_id = 'AD_VP';
-- Задание 4
select * from employees where salary between 10000 and 20000;
select * from employees where department_id not in (60,30,100);
select * from employees where first_name like '%_ll_%';
select * from employees where last_name like '%a';
-- Задание 5
select * from employees where salary > 10000;
-- Задание 6
SELECT * FROM employees WHERE salary > 10000 AND last_name LIKE 'L%';
-- Задание 7
-- Этот запрос будет вкючать всех сотрудников, все зарплаты будут больше или меньше или равны 10000.
-- Задание 8
-- Этот запрос будет вкючать всех сотрудников, кроме тех у кого зарплата = 10000
-- Задание 9
-- Этот запрос будет пустым так не может зарплата одновременно быть > 10000 и <5000

