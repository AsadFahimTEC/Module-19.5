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
SELECT
  CONCAT(s.first_name, ' ', s.last_name) AS student_name,
  COALESCE(c.course_title, 'Not Enrolled') AS course_title,
  e.paid_amount
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id
ORDER BY s.first_name, s.last_name;

-- Display all courses and their enrolled students.
-- Include courses that have no enrollments using a RIGHT JOIN.
  SELECT
  c.course_title,
  CONCAT(s.first_name, ' ', s.last_name) AS student_name,
  e.paid_amount
FROM enrollments e
RIGHT JOIN courses c ON e.course_id = c.course_id
LEFT JOIN students s ON e.student_id = s.student_id
ORDER BY c.course_title;

-- Display all students and all courses, even if there is no matching enrollment, using a FULL JOIN

SELECT
  CONCAT(s.first_name, ' ', s.last_name) AS student_name,
  c.course_title,
  e.paid_amount
FROM students s
FULL JOIN enrollments e ON s.student_id = e.student_id
FULL JOIN courses c ON e.course_id = c.course_id
ORDER BY student_name, c.course_title;