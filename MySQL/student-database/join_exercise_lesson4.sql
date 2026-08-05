CREATE SCHEMA student_join_practice;
USE student_join_practice;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    course VARCHAR(100) NOT NULL
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    units INT NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    grade DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

INSERT INTO students (first_name, last_name, course)
VALUES
('Jacob', 'Fernandez', 'Information Technology'),
('Maria', 'Santos', 'Computer Science'),
('Luis', 'Reyes', 'Information Technology'),
('Anna', 'Cruz', 'Data Analytics');

INSERT INTO subjects (subject_id, subject_name, units)
VALUES
(101, 'Python', 3),
(102, 'Excel', 3),
(103, 'MySQL', 3),
(104, 'Power BI', 2);

INSERT INTO enrollments (student_id, subject_id, grade)
VALUES
(1, 101, 92.00),
(1, 103, 89.00),
(2, 102, 84.00),
(3, 101, 95.00),
(4, 104, 90.00);

SELECT * FROM students INNER JOIN enrollments ON students.student_id = enrollments.student_id;

SELECT students.first_name, students.last_name, enrollments.subject_id, enrollments.grade FROM students INNER JOIN enrollments ON students.student_id = enrollments.student_id;

SELECT students.first_name, students.last_name, subjects.subject_name, enrollments.grade FROM students INNER JOIN enrollments ON students.student_id = enrollments.student_id INNER JOIN subjects ON enrollments.subject_id = subjects.subject_id;

SELECT students.first_name, students.last_name, enrollments.subject_id, enrollments.grade FROM students LEFT JOIN enrollments ON students.student_id = enrollments.student_id;

SELECT students.first_name, students.last_name FROM students LEFT JOIN enrollments ON students.student_id = enrollments.student_id WHERE enrollments.enrollment_id IS NULL;

SELECT s.first_name, s.last_name, sub.subject_name, e.grade FROM students AS s INNER JOIN enrollments AS e ON s.student_id = e.student_id INNER JOIN subjects AS sub ON e.subject_id = sub.subject_id;

#List every enrolled students with their subject and grade
SELECT s.first_name, s.last_name, sub.subject_name, e.grade FROM students AS s INNER JOIN enrollments AS e ON s.student_id = e.student_id INNER JOIN subjects AS sub ON e.subject_id = sub.subject_id;

#Show only IT students with theri subject and grade
SELECT s.first_name, s.last_name, s.course, sub.subject_name, e.grade FROM students AS s INNER JOIN enrollments AS e ON s.student_id = e.student_id INNER JOIN subjects AS sub ON e.subject_id = sub.subject_id WHERE s.course = 'Information Technology';

#Show all students, even those without enrollments
SELECT s.first_name, s.last_name, sub.subject_name, e.grade FROM students AS s LEFT JOIN enrollments AS e ON s.student_id = e.student_id LEFT JOIN subjects AS sub ON e.subject_id = sub.subject_id;

#Find students with no enrolled subjects
SELECT s.first_name, s.last_name FROM students AS s LEFT JOIN enrollments AS e ON s.student_id = e.student_id WHERE e.enrollment_id IS NULL;

#Show subject names with grades
SELECT
    sub.subject_name,
    e.grade
FROM enrollments AS e
INNER JOIN subjects AS sub
    ON e.subject_id = sub.subject_id;

#Which students are enrolled in Python
SELECT s.first_name, s.last_name
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN subjects sub ON e.subject_id = sub.subject_id
WHERE sub.subject_name = 'Python';

#which students have grades above 90
SELECT s.first_name, s.last_name, sub.subject_name, e.grade
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN subjects sub ON e.subject_id = sub.subject_id
WHERE e.grade > 90;

#which subjects is each student taking
SELECT s.first_name, s.last_name, sub.subject_name
FROM students s
INNER join enrollments e on s.student_id = e.student_id
INNer join subjects sub on e.subject_id = sub.subject_id
order by s.student_id;

#which students have no subjects yet
SELECT s.first_name, s.last_name
from students s
Left join enrollments e on s.student_id = e.student_id
where e.student_id IS NULL;

#which subject have the highest grade
select sub.subject_name, e.grade
from subjects sub
inner join enrollments e on sub.subject_id = e.subject_id
where e.grade = (SELECT MAX(grade) from enrollments);

#show student names, subject names, and grades
SELECT s.first_name, s.last_name, sub.subject_name, e.grade
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN subjects sub ON e.subject_id = sub.subject_id;

#show every student, even if no subject is enrolled
SELECT s.first_name, s.last_name, sub.subject_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN subjects sub ON e.subject_id = sub.subject_id;

#Find students who have no enrollment record
SELECT s.first_name, s.last_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

#show only students with grades of 90 and above
SELECT s.first_name, s.last_name, sub.subject_name, e.grade
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN subjects sub ON e.subject_id = sub.subject_id
WHERE e.grade >= 90;

#count how many enrollment each student has
SELECT s.first_name, s.last_name, COUNT(e.enrollment_id) AS total_enrollments
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name;
