create database if not exists
310524ptm_taxi_tetiana;

use 310524ptm_taxi_tetiana;

create table if not exists
taxi_client
(
id int primary key,
first_name varchar(50),
last_name varchar(50),
phone_number varchar(25),
email varchar (40)
);


create table if not exists
driver
(
id int primary key,
first_name varchar(50),
last_name varchar(50),
phone_number varchar(25),
emeil varchar(40)
);

create table if not exists
rate_coef
(
id int primary key,
coef decimal(5,3)
);

create table if not exists
rate
(
id int primary key,
rate decimal (7,2),
car_class varchar(90)
);

create table if not exists
work_shift
(
id int primary key,
work_shift varchar(60),
driver_id int,
foreign key (driver_id) references
driver(id),
auto_id int,
foreign key (auto_id) references auto(id)
); 

create table if not exists
feedback
(
id int primary key, 
feedback varchar(1000),
rate decimal (1,0)
);

create table if not exists
feedback_type
(
id int primary key,
feed_type varchar(1000)
);

create table if not exists
feedback2feedback_type
(
feedback_id int,
feedback_type_id int,
primary key(feedback_id, feedback_type_id),
foreign key(feedback_type_id)
references feedback_type,
foreign key(feedback_id) references feedback
); -- не создается


create table if not exists
auto
(
id int primary key,
model varchar(20),
color varchar(20),
regestration_number varchar(90),
rate_coef_id int,
foreign key(rate_coef_id) references rate_coef(id)
);

create table if not exists
taxi_order
(
id int primary key,
feedback_id int unique,
foreign key(feedback_id) references feedback(id),
rate_id int,
foreign key(rate_id) references rate(id),
rate_coef_id int,
foreign key(rate_coef_id) references rate_coef(id),
taxi_client_id int,
foreign key(taxi_client_id) references taxi_client(id),
driver_id int,
foreign key (driver_id) references driver(id)
);



