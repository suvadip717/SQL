CREATE DATABASE IF NOT EXISTS XYZ;

USE XYZ;

CREATE TABLE employee(
    id INT primary key,
    name varchar(50),
    salary int not null
);

INSERT INTO employee (id,name,salary) VALUES (1,"Adam",25000),(2,"Bob",30000),(3,"Casey",40000);

SELECT * from employee;