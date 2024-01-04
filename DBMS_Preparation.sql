CREATE DATABASE IF NOT EXISTS Anudeep_Foundation_DBMS;

USE Anudeep_Foundation_DBMS;

CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    enrollment_date DATE
);


CREATE TABLE IF NOT EXISTS courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    instructor VARCHAR(50) NOT NULL,
    start_date DATE,
    end_date DATE
);



INSERT INTO students (first_name, last_name, email, date_of_birth, enrollment_date)
VALUES
    ('Aditi ', 'Roy', 'a_roy@gmail.com', '2000-01-15', '2022-03-01'),
    ('Kutush ', 'Roy', 'k_roy@gmail.com', '2001-05-22', '2022-02-15'),
    ('Shibam ', 'Chattaraj', 's_chattaraj@gmail.com', '1999-11-10', '2022-04-05');


INSERT INTO courses (course_name, instructor, start_date, end_date)
VALUES
    ('Advance DBMS ', 'Afshan Banu', '2022-02-28', '2022-06-10'),
    ('Spring Boot', 'Monalisa Chakroborty', '2022-03-15', '2022-07-01'),
    ('Hibernate', 'Dibakar Nandi', '2022-04-01', '2022-08-15');


SELECT * FROM students;
-- Select all records from the "students" table
SELECT * FROM courses;


SELECT student_id, first_name, last_name, course_id,course_name
FROM students
INNER JOIN courses ON students.student_id = courses.course_id;

SELECT student_id, first_name, last_name, email, course_name, start_date, end_date
FROM students
LEFT JOIN courses ON students.student_id = courses.course_id;

SELECT student_id, first_name, last_name, course_id, course_name, instructor
FROM students
RIGHT JOIN courses ON students.student_id = courses.course_id;


SELECT course_id, COUNT(*) as enrollment_count
FROM students
GROUP BY course_id
HAVING enrollment_count > 2;

















