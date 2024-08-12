CREATE DATABASE IF NOT EXISTS Banking;
USE Banking;
CREATE TABLE paymentMethod(
    customer_id int primary key,
    customer varchar(50),
    mode varchar(30),
    city varchar(40)
);
INSERT INTO paymentMethod (customer_id, customer, mode, city)
VALUES(101, "Olivia Barrett", "Netbanking", "Porland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103,"Maya Hernandez","Credit Card","Seattle"),
(104,"Liam Donovan","Netbanking","Denver"),
(105,"Shophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Dedit Card","Minneapolis"),
(107,"Ava Patel","Dedit Card","Phoenix"),
(108,"Lucas Carter","Netbanking","Boston"),
(109,"Isabella Martinez","Netbanking","Nashville"),
(110,"Jackson Brooks","Credit Card","Boston");

SELECT * FROM paymentMethod;

SELECT mode, COUNT(mode) FROM paymentMethod GROUP BY mode;

DROP TABLE paymentMethod;