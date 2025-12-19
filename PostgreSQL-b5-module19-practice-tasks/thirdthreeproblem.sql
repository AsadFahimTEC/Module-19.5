-- third three
-- Show course categories where the average course price is greater than 60 using HAVING

-- select * from courses
select category, avg(price) from courses
group by category
having avg(price) > 60

-- Count how many students are enrolled in each course
-- select * from enrollments
-- select course_id, count(enrollment_id) as total_enrollment from enrollments
-- group by course_id
SELECT
  c.course_title,
  COUNT(e.enrollment_id) AS total_enrollment
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_title
ORDER BY total_enrollment DESC

-- Explain what happens if you try to insert an enrollment with a student_id that does not exist in the students table
-- If you try to insert a row into the enrollments table with a student_id that does not exist in the students table, 
-- PostgreSQL will prevent the insert and throw a foreign key violation error.

-- 🔍 Why this happens

-- The enrollments.student_id column is a foreign key referencing students.student_id.

-- A foreign key ensures referential integrity — every student_id in enrollments must match a valid student in the students table.

-- ❌ Example

INSERT INTO enrollments (student_id, course_id, enrollment_date, progress_percentage, paid_amount)
VALUES (999, 1, '2025-01-01', 50, 49.99);

-- Error you’ll get:

ERROR:  insert or update on table "enrollments" violates foreign key constraint "enrollments_student_id_fkey"
DETAIL:  Key (student_id)=(999) is not present in table "students".
