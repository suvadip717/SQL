CREATE DATABASE IF NOT EXISTS myKey;

USE myKey;

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

ALTER TABLE student CHANGE name full_name varchar(50);
DELETE FROM student WHERE marks < 80;
ALTER TABLE student DROP COLUMN grade;

SELECT * FROM student;