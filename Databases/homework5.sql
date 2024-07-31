-- 1.Подключитесь к базе данных world (которая находится на удаленном сервере). 
use world;
-- 2. Выведите список стран с языками, на которых в них говорят. 
select Name
from country
union
select Language
from countrylanguage;

-- 3.Посмотреть на таблицы в базе world и объяснить ограничения нескольких столбцов - ответить 1 предложением.
-- ограничения могут включать в себя ограничения на уникальность значений например PRIMARY KEY,
-- ограничения на значения такие как CHECK.

-- 4.Выведите список городов с их населением и названием стран

select Name, population
from city
union
select Name, null as population
from country;
-- 5.На вашем локальном сервере в любой базе создать таблицу
 -- без ограничений (любую, можно взять с урока).
use 310524ptm_Kononiuk;
create table people(
id int auto_increment primary key,
firstname varchar(50),
lastname varchar(50),
age int
); 

-- 6. Добавить в таблицу 5 значений. Добавить 3 человека с одинаковым
--  именами и 2 человека без lastname

insert into people (firstname, lastname, age)
values ('John', 'Doe', 30),
('Alice', 'Smith', 26),
('John', 'Johnson', 42),
('Bob', null, 35),
('Eva', null, 27);

-- 7.Использовать оператор alter table … modify , чтобы добавить ограничение
-- not null на поле firstname и lastname.

alter table people
modify firstname varchar(50) not null,
modify lastname varchar(50) not null;

-- 8. Добавить ограничение unique для пары firstname\lastname. 

alter table people
add constraint unique_name unique
(firstname, lastname);

-- 9. Удалить таблицу из базы и пересоздать ее, модифицировав запрос
 -- add table так, чтобы он учитывал ограничения (см примеры из класса).
 drop table if exists people;
 create table people (
 id int auto_increment primary key,
 firstname varchar(50) not null,
 lastname varchar(50),
 age int,
 constraint unique_name unique
 (firstname, lastname)
 );
 insert into people (firstname, lastname, age)
values ('John', 'Doe', 30),
('Alice', 'Smith', 26),
('John', 'Johnson', 42),
('Bob', null, 35),
('Eva', null, 27);

-- 10 Добавить правильные и неправильные данные (нарушающие и не нарушающие ограничения). 
insert into people (firstname, lastname, age)
values ('John', 'Doeaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 45);
insert into people (firstname, lastname, age)
values ('John', 'Doe', -30);
select * from people;
insert into people (firstname, lastname, age)
values ('Michael', 'Brown', 33),
('Sarah', 'White', 29);




 
 
 
