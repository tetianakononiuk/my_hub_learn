use Students;
-- Выведите имена студентов и id курса, которые они проходят

select *
from Students;

select first_name, sc.course_id
from Students as st
inner join Students2Courses as sc
on sc.student_id = st.id ;

-- Измените запрос в задании 1 так, чтобы выводились имена студентов и названия курсов,
 -- которые они проходят
 select first_name, sc.course_id
from Students as st
inner join Students2Courses as sc
on sc.student_id = st.id 
inner join Courses as c
on st.id = sc.course_id ;

 
