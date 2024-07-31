-- Не подглядывая в решение в классе, создать таблицу weather с тремя полями:
-- название города (city)
-- дата (forecast_date)
-- температура в эту даты (temperature)

use 310524ptm_Kononiuk;
create table weather (
city varchar(255),
forecast_date date, 
temperature decimal(5, 2),
min_temp int
);
-- 2. Вывести содержимое таблицы
select * from weather;

-- 3. Добавить данные в таблицу, используя запрос INSERT
-- “29 августа 2023 года в Берлине было 30 градусов”

insert into weather (city, forecast_date, temperature)
values ('Берлин','2023-08-29', 30);

-- 4. Добавить еще 3 записи в таблицу (произвольную погоду в разных городах в разные дни). 
insert into weather (city, forecast_date, temperature)
values ('Париж', '2023-08-30', 25),
	   ('Мадрид', '2023-08-31', 28),
       ('Лондон', '2023-09-01', 22);
select * from weather;

-- 6. Изменить данные в таблице о температуре в Берлине с 30 на 26 градусов.

 set SQL_SAFE_UPDATES=0;
 update weather
 set temperature = 26
 where city = 'Берлин';
 
-- 7. Поменяйте во всей таблице название города на Paris для записей, где температура выше 25
-- градусов. 
update weather
set city = 'Paris'
where temperature > 25;

-- 8. Добавить к таблице weather дополнительный столбец min_temp типа integer.

alter table weather
drop column min_temp; 
alter table weather
add column min_temp int;

-- 9. Используя команду update, установить значение поля min_temp в 0 для всех записей в
-- таблице.
update weather
set min_temp = 0;
select * from weather;


 
