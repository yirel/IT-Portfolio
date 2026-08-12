CREATE SCHEMA IF NOT EXISTS student_mod_practice;
USE student_mod_practice;
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    course VARCHAR(100) NOT NULL,
    year_level INT NOT NULL
);

INSERT INTO students (first_name, last_name, course, year_level)
VALUES
('Jacob', 'Fernandez', 'Information Technology', 2),
('Maria', 'Santos', 'Computer Science', 1),
('Luis', 'Reyes', 'Information Technology', 3);

SELECT * FROM students;

UPDATE students
SET course = 'Data Analytics',
    year_level = 2
WHERE first_name = 'Maria' AND last_name = 'Santos';

SELECT * FROM students;

SELECT *
FROM students
WHERE first_name = 'Luis'
AND last_name = 'Reyes';

Delete from students where student_id=3;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM students
WHERE first_name = 'Luis'
AND last_name = 'Reyes';

SET SQL_SAFE_UPDATES = 1;

START TRANSACTION;

INSERT INTO students (first_name, last_name, course, year_level)
VALUES ('Bea', 'Flores', 'Data Analytics', 2);

UPDATE students
SET course = 'Information Technology',
    year_level = 3
WHERE first_name = 'Jacob' AND last_name = 'Fernandez';

DELETE FROM students
WHERE first_name = 'Maria' AND last_name = 'Santos';

ROLLBACK;