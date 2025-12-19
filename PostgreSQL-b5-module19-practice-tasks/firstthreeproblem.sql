-- first three problem

-- Display all students and their phone numbers.
-- If the phone number is NULL, show 'Not Provided' using COALESCE.

-- select * from students
select student_id, first_name, last_name, email, country, coalesce(phone, 'Not Provided') as phone from students

-- Show all courses ordered by price (highest to lowest) and limit the result to 5 courses.

-- select * from courses
select course_title, price from courses
  order by price desc limit 5

-- Display courses for page 2, assuming 3 courses per page, using LIMIT and OFFSET
-- select * from courses
select course_title from courses limit 3 offset 3

