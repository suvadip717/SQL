CREATE DATABASE myKey;

USE myKey;

CREATE TABLE dept(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept(id,name) values(101,"English"),(102,"IT");

UPDATE dept SET id =103 where id =102;
SELECT * FROM dept;

CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO teacher(id,name,dept_id) values(101,"Adam",101),(102,"Eve",102);
SELECT * FROM teacher;
