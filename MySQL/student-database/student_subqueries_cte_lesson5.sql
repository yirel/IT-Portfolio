SELECT *
FROM students
WHERE year_level = (
    SELECT MAX(year_level)
    FROM students
);

#students above average year level
SELECT *
FROM students
WHERE year_level > (
    SELECT AVG(year_level)
    FROM students
);

SELECT
    first_name,
    last_name,
    year_level,
    (SELECT AVG(year_level) FROM students) AS average_year_level
FROM students;

SELECT *
FROM (
    SELECT course, COUNT(*) AS total_students
    FROM students
    GROUP BY course
) AS course_summary
WHERE total_students > 1;

WITH course_summary AS (
    SELECT course, COUNT(*) AS total_students
    FROM students
    GROUP BY course
)
SELECT *
FROM course_summary;

#students in the highest year level
Select * from students
where year_level = (select max(year_level)
from students
);

#students above average year level
select * from students
where year_level > (select avg(year_level)
from students
);

#courses with more than one students
select * from (
select course, count(*) as total_students
from students
group by course
) as course_summary 
where total_students > 1;

#course summary using a CTE
WITH course_summary AS (
    SELECT course, COUNT(*) AS total_students
    FROM students
    GROUP BY course
)
SELECT *
FROM course_summary
WHERE total_students > 1;

#average year level by course
with course_levels as (select course, avg(year_level) as avg_year_level
from students
group by course
)
Select *from course_levels;

#subject with units above average
select * from subjects 
where units > (select avg(units)
from subjects
);

#using CTE
with subject_summary as(
select department, count(*) as total_subjects
from subjects
group by department
)
select*from subject_summary
where total_subject >=2;

#Find students in the lowest year level.
select * from students 
where year_level = (select min(year_level)
from students
);

#List courses with counts above the average course count.
SELECT *
FROM (
    SELECT course, COUNT(*) AS total_students
    FROM students
    GROUP BY course
) AS course_summary
WHERE total_students > (
    SELECT AVG(course_count)
    FROM (
        SELECT COUNT(*) AS course_count
        FROM students
        GROUP BY course
    ) AS avg_courses
);
#Create a CTE that summarizes subjects by department
WITH subject_summary AS (
    SELECT department, COUNT(*) AS total_subjects
    FROM subjects
    GROUP BY department
)
SELECT *
FROM subject_summary
WHERE total_subjects >= 2;

#Use a subquery to find records above the average score
SELECT *
FROM students
WHERE year_level > (
    SELECT AVG(year_level)
    FROM students
);
#Rewrite one of your queries using a subquery or CTE
WITH course_summary AS (
    SELECT course, COUNT(*) AS total_students
    FROM students
    GROUP BY course
)
SELECT *
FROM course_summary
WHERE total_students > 1;