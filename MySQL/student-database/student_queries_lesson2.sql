SELECT * FROM students WHERE course = 'Data Analytics';

SELECT * FROM students WHERE year_level >= 2;

SELECT * FROM students WHERE enrollment_date > '2025-12-31';

SELECT DISTINCT course FROM students;

SELECT * FROM students ORDER BY last_name ASC;

SELECT * FROM students LIMIT 3;

SELECT * FROM students WHERE course = 'Information Technology' ORDER BY year_level DESC;

SELECT * FROM students LIMIT 2;

SELECT DISTINCT course FROM students;

SELECT * FROM students WHERE year_level >= 2;

SELECT * FROM students ORDER BY enrollment_date DESC LIMIT 3;

SELECT * FROM subjects;

SELECT * FROM subjects where department = 'Information Technology';

SELECT * FROM subjects WHERE units = 3;

SELECT DISTINCT department FROM subjects;

SELECT * FROM subjects LIMIT 2;

SELECT * FROM subjects ORDER BY subject_name ASC;

SELECT * FROM subjects WHERE department = 'Information Technology' ORDER BY subject_name ASC LIMIT 2;