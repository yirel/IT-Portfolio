CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    course VARCHAR(100) NOT NULL,
    year_level INT NOT NULL,
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE
);

INSERT INTO students (first_name, last_name, course, year_level, email, enrollment_date)
VALUES
('Jacob', 'Fernandez', 'Information Technology', 2, 'jacob@example.com', '2026-07-01'),
('Maria', 'Santos', 'Computer Science', 1, 'maria@example.com', '2026-06-15'),
('Luis', 'Reyes', 'Information Technology', 3, 'luis@example.com', '2025-08-20'),
('Anna', 'Cruz', 'Data Analytics', 2, 'anna@example.com', '2026-01-10'),
('Mark', 'Dela Cruz', 'Information Technology', 4, 'mark@example.com', '2024-07-30');

SELECT * FROM students;

SELECT first_name, last_name, course
FROM students;

SELECT * 
FROM students
WHERE course = 'Information Technology';

SELECT *
FROM students
WHERE year_level = 2;

SELECT *
FROM students
ORDER BY last_name ASC;

SELECT *
FROM students
ORDER BY year_level DESC;

SELECT COUNT(*) AS total_students
FROM students;

CREATE Table subjects(
subject_id INT AUTO_INCREMENT PRIMARY KEY,
subject_name VARCHAR(100) NOT NULL,
units INT NOT NULL,
department VARCHAR(100) NOT NULL
);

INSERT INTO subjects (subject_name, units, department)
VALUES
    ('Python', 3, 'Information Technology'),
    ('Excel', 2, 'Information Technology'),
    ('MySQL', 3, 'Information Technology'),
    ('Power BI', 3, 'Information Technology'),
    ('GitHub', 2, 'Information Technology');
    
SELECT * FROM subjects;

USE student_db;

SELECT * FROM students;

SELECT * FROM students WHERE course = 'Information Technology';

SELECT * FROM students WHERE year_level > 2;

SELECT * FROM students WHERE year_level = 2;

SELECT * FROM students WHERE course <> 'Information Technology';

SELECT * FROM students WHERE first_name = 'Jacob';

SELECT * FROM students WHERE enrollment_date > '2026-01-01';

SELECT * FROM students WHERE enrollment_date <= '2026-07-01';

SELECT * FROM students WHERE course = 'Information Technology' AND year_level = 2;

SELECT * FROM students WHERE course = 'Information Technology' OR course = 'Data Analytics';

SELECT * FROM students ORDER BY last_name ASC;

SELECT * FROM students ORDER BY year_level DESC;

SELECT * FROM students ORDER BY course ASC, last_name ASC;

SELECT * FROM students WHERE course = 'Information Technology' ORDER BY year_level DESC, last_name ASC;

SELECT DISTINCT course FROM students;

SELECT DISTINCT year_level FROM students;

SELECT * FROM students LIMIT 3;

SELECT * FROM students WHERE course = 'Information Technology' ORDER BY last_name ASC LIMIT 2;

SELECT first_name, last_name, course, year_level FROM students WHERE course = 'Information Technology' AND year_level >= 2 ORDER BY year_level DESC, last_name ASC LIMIT 5;

