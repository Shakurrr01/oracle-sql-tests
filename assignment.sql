CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    enrollment_year INT
);
commit;
desc students;
CREATE TABLE courses (
    course_id INT PRIMARY KEY ,
    course_name VARCHAR(100)
);
CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO students (student_id, first_name, last_name, enrollment_year)
VALUES 
(1,'Alice', 'Smith', 2022);
INSERT INTO students (student_id, first_name, last_name, enrollment_year)
VALUES 
(2,'Bob', 'Jones', 2023);
INSERT INTO students (student_id, first_name, last_name, enrollment_year)
VALUES 
(3,'Charlie', 'Brown', 2021);
INSERT INTO students (student_id, first_name, last_name, enrollment_year)
VALUES 
(4,'Henry', 'Hart', 2020);
select * from students;
INSERT INTO courses (course_id ,course_name)
VALUES 
(1,'Mathematics');
INSERT INTO courses (course_id ,course_name)
VALUES 
(2,'Computer Science');
INSERT INTO courses (course_id ,course_name)
VALUES 
(3,'History');
select * from courses;
INSERT INTO student_courses (student_id, course_id)
VALUES 
(1, 1);
INSERT INTO student_courses (student_id, course_id)
VALUES
(1, 2);
INSERT INTO student_courses (student_id, course_id)
VALUES
(2, 2);
INSERT INTO student_courses (student_id, course_id)
VALUES
(3, 3); 
SELECT
    *
FROM STUDENT_COURSES;
UPDATE students
SET last_name = 'Johnson'
WHERE student_id = 2;
SELECT
    *
FROM STUDENTS;
DELETE FROM students
WHERE student_id = 4;
SELECT s.first_name, s.last_name, c.course_name
FROM students s
JOIN student_courses sc ON s.student_id = sc.student_id
JOIN courses c ON sc.course_id = c.course_id;
SELECT first_name, last_name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM student_courses sc
    JOIN courses c ON sc.course_id = c.course_id
    WHERE c.course_name = 'Computer Science'
);
