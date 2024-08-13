CREATE DATABASE IF NOT EXISTS inJoin;

USE inJoin;

CREATE TABLE student(student_id INT, name VARCHAR(50));

INSERT INTO student (student_id, name)
values (101, "adam"),
    (102, "bob"),
(103, "casey");

SELECT * from student;

CREATE TABLE course(student_id INT, course VARCHAR(20));

INSERT INTO course (student_id, course)
values (102, "english"),
(105, "math"),
(103, "science"),
(107, "bengali");

SELECT * FROM course;

-- Inner Join
SELECT *
FROM student as s
INNER JOIN course as c 
ON s.student_id = c.student_id;

-- Left Join
SELECT *
FROM student AS s
LEFT JOIN course as c
ON s.student_id = c.student_id;

-- Right Join
SELECT *
FROM student as s 
RIGHT JOIN course as c 
ON s.student_id = c.student_id;

-- Full Join
SELECT * FROM student as s
LEFT JOIN course as c 
ON s.student_id = c.student_id
UNION
SELECT * FROM student as s 
RIGHT JOIN course as c 
ON s.student_id = c.student_id;

-- Left Exclusive Join
SELECT * FROM student as s 
LEFT JOIN course as c 
ON s.student_id = c.student_id
WHERE c.student_id IS NULL;

-- Right Exclusive Join
SELECT * FROM student as s 
RIGHT JOIN course as c 
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

-- Self Join
CREATE TABLE IF NOT EXISTS employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee (id,name,manager_id) 
values (101,"adam",103), 
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);

SELECT * FROM employee;

SELECT a.name as manager, b.name as employee 
FROM employee as a 
JOIN employee as b 
ON a.id = b.manager_id;