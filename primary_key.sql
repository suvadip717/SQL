use XYZ;

CREATE TABLE temp1(
    id int,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    primary key(id,name)
);

INSERT INTO temp1 (id,name, age, city) VALUES(01,"Sabuj",24,"Delhi");

SELECT * from temp1;