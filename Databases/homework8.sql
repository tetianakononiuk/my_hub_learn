-- 1. Подключитесь к базе данных Students
 -- (которая находится на удаленном сервере). 
 use Students;
 
 -- 2. Найдите самого старшего студента
 select first_name, age
 from Students
 order by age desc
 limit 1;
 
 -- 3. Найдите самого старшего преподавателя
 select name, age
 from Teachers
 order by age desc
 limit 1;
 
 -- 4.Выведите список преподавателей с
 -- количеством компетенций у каждого
 select t.name, count(tc.competencies_id) as Amount_of_competencies
 from Teachers as t
 left join Teachers2Competencies as tc
 on t.id = tc.teacher_id
 group by t.name;
 
-- 5.Выведите список курсов с количеством студентов в каждом

select t1.title, count(t3.id) as student_count
from Courses as t1
left join Students2Courses as t2
on t1.id = t2.course_id
left join Students as t3
on t2.student_id = t3.id
group by t1.title;

-- 6. Выведите список студентов, с количеством курсов,
-- посещаемых каждым студентом.
  
 select t1.first_name, count(t3.id) as num_courses
 from Students as t1
left join Students2Courses t2
 on t2.student_id = t1.id
 left join Courses as t3
 on t2.course_id = t3.id
 group by t1.first_name;
 
 


 
 
 
 