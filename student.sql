CREATE DATABASE myDB;
USE myDB;
CREATE TABLE student(
    id INT primary key,
    name varchar(50),
    age int not null
);
INSERT INTO student VALUES(01, "Akash", 23);
INSERT INTO student VALUES(02, "Ashok", 28);

INSERT INTO student(id, name, age)
VALUES (03, "Karan", "45"),
    (04, "Arjun", "48");
SELECT *
from student;