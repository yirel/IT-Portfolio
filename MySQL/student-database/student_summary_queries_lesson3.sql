SELECT COUNT(*) AS total_students
FROM students;

SELECT COUNT(*) AS it_students
FROM students
WHERE course = 'Information Technology';

SELECT SUM(units) AS total_units
FROM subjects;

SELECT AVG(year_level) AS average_year_level
FROM students;

SELECT MIN(year_level) AS lowest_year_level
FROM students;

SELECT MAX(year_level) AS highest_year_level
FROM students;

SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

SELECT year_level, COUNT(*) AS total_students
FROM students
GROUP BY year_level
ORDER BY year_level;

SELECT course, year_level, COUNT(*) AS total_students
FROM students
GROUP BY course, year_level
ORDER BY course, year_level;

SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course
HAVING COUNT(*) >= 2;

SELECT *
FROM students
WHERE year_level >= 2;

SELECT year_level, COUNT(*) AS total_students
FROM students
GROUP BY year_level
HAVING COUNT(*) >= 2;

#count all students
SELECT COUNT(*) AS total_students
FROM students;

#count students per course
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

#count students per year level
SELECT year_level, COUNT(*) AS total_students
FROM students
GROUP BY year_level
ORDER BY year_level;

#show only courses with more than one student
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course
HAVING COUNT(*) > 1;

#show the average year level
SELECT AVG(year_level) AS average_year_level
FROM students;

#show the highest and lowest year level
SELECT MIN(year_level) AS lowest_year_level,
       MAX(year_level) AS highest_year_level
FROM students;

SELECT * FROM subjects;

#total number of subject
SELECT COUNT(*) AS total_subjects
FROM subjects;

#total units by department
SELECT department, SUM(units) AS total_units
FROM subjects
Group by department;

#average units by department
SELECT department, AVG(units) AS average_units
FROM subjects
GROUP BY department;

#departments with more than one subject
SELECT department, COUNT(*) AS total_subjects
FROM subjects
GROUP BY department
Having COUNT(*) > 1;

SELECT * FROM students;

#how many students are in each course;
SELECT course, COUNT(*) as total_students
FROM students
group by course
order by course;

#how many students are in each year level
SELECT year_level, COUNT(*) as total_students
FROM students
group by year_level
order by year_level;

#which courses has the most students
SELECT course, count(*) as total_students
from students
group by course;

#which cources have more than one student
select course, count(*) as total_students
from students
group by course
having count(*) > 1;

#what is the average year level
select avg(year_level) as average_year_level
from students;

#how many subjects belong in each department
SELECT department, COUNT(*) as total_subjects
from subjects
Group by department;

SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course
HAVING COUNT(*) >= 2
ORDER BY total_students DESC;
