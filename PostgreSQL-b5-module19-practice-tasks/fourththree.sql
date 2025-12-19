--fourth three problem

-- Display student full name, course title, and paid amount using an INNER JOIN

-- select * from courses

-- select * from students

-- select * from enrollments

select concat(s.first_name, ' ', s.last_name) as full_name, c.course_title, e.paid_amount from enrollments as e
inner join students as s on e.student_id= s.student_id
inner join courses as c on e.course_id = c.course_id

-- Display all students and their enrolled courses.
-- Include students who have not enrolled in any course using a LEFT JOIN.

-- Display all courses and their enrolled students.
-- Include courses that have no enrollments using a RIGHT JOIN.

-- Display all students and all courses, even if there is no matching enrollment, using a FULL JOIN
