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

SELECT MAX(marks) FROM student;

SELECT AVG(marks) FROM student;

SELECT COUNT(name) FROM student;

SELECT city, COUNT(name) FROM student GROUP BY city;

SELECT city,grade, COUNT(name) FROM student GROUP BY city, grade;

SELECT city, AVG(marks) FROM student GROUP BY city;

SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks);

SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) DESC;

SELECT grade, COUNT(grade) from student GROUP BY grade ORDER BY grade;

SELECT city, COUNT(city) FROM student GROUP BY city HAVING MAX(marks)>90;

SELECT city FROM student WHERE grade="A" GROUP BY city HAVING max(marks)>90 ORDER BY city DESC;

UPDATE student SET grade ="O" WHERE grade="A";

UPDATE student SET marks = 82 WHERE rollno =105;

UPDATE student SET grade = 'B' WHERE marks BETWEEN 80 AND 90;

UPDATE student SET marks=marks+1;

UPDATE student SET marks = 12 WHERE rollno=105;

DELETE FROM student WHERE marks<33;

ALTER TABLE student ADD COLUMN age INT NOT NULL DEFAULT 19;
ALTER TABLE student RENAME TO students;
ALTER TABLE student CHANGE age stu_age INT;
ALTER TABLE student DROP COLUMN stu_age;

INSERT INTO student (rollno,name,marks,stu_age) values(107,"gargi",68,32)

SELECT * from student;

DROP TABLE student;