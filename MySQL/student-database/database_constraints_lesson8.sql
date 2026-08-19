CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL UNIQUE,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    course_id INT NOT NULL,
    email VARCHAR(100) UNIQUE,
    year_level INT CHECK (year_level >= 1 AND year_level <= 4),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO departments (department_name)
VALUES ('Computing'), ('Analytics');

INSERT INTO courses (course_name, department_id)
VALUES
('Information Technology', 1),
('Computer Science', 1),
('Data Analytics', 2);


INSERT INTO students (student_name, course_id, email, year_level)
VALUES
('Jacob Fernandez', 1, 'jacob@example.com', 2),
('Maria Santos', 2, 'maria@example.com', 1),
('Anna Cruz', 3, 'anna@example.com', 2);

#duplicate email
INSERT INTO students (student_name, course_id, email, year_level)
VALUES ('Luis Reyes', 1, 'jacob@example.com', 3);

#invalid year level
INSERT INTO students (student_name, course_id, email, year_level)
VALUES ('Luis Reyes', 1, 'luis@example.com', 5);

#missing required value
INSERT INTO students (course_id, email, year_level)
VALUES (1, 'test@example.com', 2);
