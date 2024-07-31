use week_5;

select * from ARTIST;

show create table ARTIST;

use 310524ptm_Kononiuk;
create table goods2 (
id int primary key,
title varchar(30),
quantity int check (quantity > 0),
in_stock char(1) check (in_stock in ('y', 'n'))
);

select* from goods2;
describe goods2;
show create table goods2;

insert into goods2 (id, title, quantity, in_stock)
values (30, 'pen', 45, 'y');

insert into goods2 (id, title, quantity, in_stock)
values (30, 'pensil', 50, 'y');
insert into goods2 (id, title, quantity, in_stock)
values (30, 'pensil111111111111111111111111111111', 45, 'y');
insert into goods2 (id, title, quantity, in_stock)
values (30, 'pensil', -50, 'y');
insert into goods2 (id, title, quantity, in_stock)
values (30, 'pensil', 50, 'x');


alter table goods2
drop constraint `goods2_chk_1`;



select first_name
from hr.employees
union all
select last_name
from hr.employees;

alter table goods2
add price int default 0;

insert into goods2 (id, title, quantity, in_stock, price)
values (32, 'book', 60, 'y', 150),
(33, 'folder', 70, 'y', 20),
(34, 'paper', 75, 'y', 48),
(35, 'magazine', 80, 'y', 92),
(36, 'notebook', 85, 'y', 73),
(37, 'paper_clips', 90, 'y', 10),
(38, 'stapler', 95, 'y', 100 ),
(39, 'hole_puncher', 98, 'y', 135);

select *
from goods;
select name 
from goods
union all 
select title from goods2;

insert into goods2 (id, title, quantity, in_stock, price)
values (40, 'Велосипед', 20, 'y', 200);
select name 
from goods
union
select title 
from goods2;

select id, name, quantity, in_stock, null as price
from goods
union all
select *
from goods2;

delete from goods2 where id = 3;
commit;


