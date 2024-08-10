CREATE DATABASE if not exists college;
USE college;
CREATE TABLE student(
    rollno INT primary key,
    name varchar(50),
    marks INT not null,
    grade varchar(1),
    city varchar(20)
);
INSERT into student (rollno, name, marks, grade, city)
values(101, "Anil", 78, "C", "Pune"),
(102,"Bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"B","Mumbai"),
(104,"Dhuruv",96,"A","Delhi"),
(105,"Emanuel",12,"F","Delhi"),
(106,"Farah",82,"B","Delhi");

SELECT * from student;

SELECT name, marks from student;

SELECT city FROM student;

SELECT DISTINCT city FROM student;

SELECT * from student WHERE city="Delhi";

SELECT * FROM student WHERE marks > 82;

SELECT * FROM student WHERE marks > 80 AND city = "Delhi";

SELECT * FROM student WHERE marks > 80 OR city = "Delhi";

SELECT * FROM student WHERE marks BETWEEN 80 and 90;

SELECT * FROM student WHERE city IN ("Delhi","Mumbai");

SELECT * FROM student WHERE city NOT IN ("Delhi","Mumbai");

SELECT * FROM student LIMIT 3;

SELECT * FROM student WHERE marks > 80 LIMIT 3;

SELECT * FROM student ORDER BY city ASC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

DROP TABLE student;