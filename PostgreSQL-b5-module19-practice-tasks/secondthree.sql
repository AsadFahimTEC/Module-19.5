-- second three problem

-- Update the price of all courses in the Programming category by increasing it 10%

-- select * from courses
-- select course_title, category, price from courses
update courses set price = price * 1.10 
where category = 'Programming'

-- Delete all enrollment records where progress_percentage is NULL
-- select * from enrollments
delete from enrollments where progress_percentage is NULL

-- Find the total paid amount per course category using GROUP BY
--select * from enrollments
select c.category, sum(e.paid_amount) as total_paid from enrollments e
join courses c on e.course_id = c.course_id
group by c.category