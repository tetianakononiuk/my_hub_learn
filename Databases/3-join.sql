-- Вывести имена всех преподавателей с их компетенциями. Подсказка: сначала
-- выведите имена преподавателей с id компетенции. А потом поменяйте запрос
 -- так (добавив еще один джойн), чтобы выводились имена преподавателей и названия компетенций. 

Select 
t1.name,
t3.title 
from Teachers t1 
inner join Teachers2Competencies t2
on t1.id=t2.teacher_id
inner join Competencies t3
on t2.competencies_id=t3.id;

Select 
t1.name,
t3.title 
from Teachers t1 
left join Teachers2Competencies t2
on t1.id=t2.teacher_id
left join Competencies t3
on t2.competencies_id=t3.id;

-- Найти преподавателя, у которого нет компетенций

select t1.name
from Teachers as t1
left join Teachers2Competencies as t2
on t1.id = t2.teacher_id
where t2.competencies_id is null;

-- Отобразить имена студента и старост, на которых они обучается

select t1.first_name as stud_name, t3.title as course_name, t4.first_name as headman_name
from Students as t1
inner join Students2Courses as t2
on t1.id = t2.student_id
inner join Courses as t3
on t2.course_id = t3.id
inner join Students as t4
on  t3.headman_id = t4.id;


SELECT s.first_name as stud_name, c.title as course_name, st.first_name as headman_name
FROM Students as s
JOIN Students2Courses as sc
	ON s.id = sc.student_id
JOIN Courses as c
	ON sc.course_id = c.id
JOIN Students st
	ON c.headman_id = st.id;
