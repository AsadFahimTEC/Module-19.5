--fifth two problem
--Show the number of enrollments per year based on enrollment_date

-- select * from enrollments

select extract(year from enrollment_date) as enrollment_year,
count(*) as total_enrollments from enrollments
group by enrollment_year
order by enrollment_year

-- Find the average progress percentage per course, ignoring NULL values.
-- select * from enrollments

-- select avg(progress_percentage) as average_progress from enrollments

SELECT
  c.course_title,
  AVG(e.progress_percentage) AS average_progress
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_title
ORDER BY c.course_title;