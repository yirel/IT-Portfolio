CREATE VIEW student_course_view AS
SELECT
    s.student_id,
    s.student_name,
    c.course_name,
    d.department_name
FROM students s
JOIN courses c ON s.course_id = c.course_id
JOIN departments d ON c.department_id = d.department_id;

SELECT * FROM student_course_view;

SELECT
    student_name,
    year_level,
    ROW_NUMBER() OVER (ORDER BY year_level DESC) AS row_num
FROM students;

SELECT
    student_name,
    year_level,
    RANK() OVER (ORDER BY year_level DESC) AS rank_num
FROM students;

SELECT
    student_name,
    year_level,
    DENSE_RANK() OVER (ORDER BY year_level DESC) AS dense_rank_num
FROM students;

SELECT
    student_name,
    course_name,
    year_level,
    ROW_NUMBER() OVER (
        PARTITION BY course_name
        ORDER BY year_level DESC
    ) AS course_rank
FROM student_course_view;


#view student summary
CREATE VIEW vw_student_summary AS
SELECT
    s.student_id,
    s.student_name,
    s.year_level,
    c.course_name,
    d.department_name
FROM students s
JOIN courses c ON s.course_id = c.course_id
JOIN departments d ON c.department_id = d.department_id;

SELECT * FROM vw_student_summary;

#view top students by year level
SELECT
    student_name,
    course_name,
    year_level,
    ROW_NUMBER() OVER (ORDER BY year_level DESC) AS row_num
FROM vw_student_summary;