create database 310524ptm_Kononiuk;
use 310524ptm_Kononiuk;
drop table if exists goods;
create table goods(
id int not null auto_increment primary key,
name varchar(20),
quantity int, 
in_stock char(1)
);

describe goods;

insert into goods (name, quantity, in_stock)
values ('велосипед', 10, 'Y');

select * from goods;
insert into goods (name, quantity, in_stock)
values ('авто', 5, 'Y'), ('скейтборд', 10, 'Y'), ('самокат', 3, 'Y');
select * from goods;

update goods 
set quantity = 15
where name = 'велосипед';
set SQL_SAFE_UPDATES=0;
select * from goods;

create view v_table1 as
select *
from goods
where quantity > 10;
select *
from v_table1;
use 310524ptm_Kononiuk;

alter table goods
add price int default 0;

select price
from goods;

update goods
set price=null;

alter table goods
modify price numeric(10,2);

update goods
set price = 1153.234;

update goods
set price = null;
set SQL_SAFE_UPDATES=0;

alter table goods
modify price integer;

describe goods;
select * from goods;

alter table goods
drop column item_price;

alter table goods
change price item_price integer;
select * from orders;

