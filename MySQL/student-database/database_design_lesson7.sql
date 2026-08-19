CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
    );

CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


INSERT INTO departments (department_name)
VALUES ('Computing'), ('Analytics');

INSERT INTO courses (course_name, department_id)
VALUES
('Information Technology', 1),
('Computer Science', 1),
('Data Analytics', 2);

INSERT INTO students (student_name, course_id)
VALUES
('Jacob Fernandez', 1),
('Maria Santos', 2),
('Luis Reyes', 1),
('Anna Cruz', 3);

INSERT INTO subjects (subject_name, course_id)
VALUES
('Python', 1),
('Excel', 1),
('MySQL', 1),
('Power BI', 3);
