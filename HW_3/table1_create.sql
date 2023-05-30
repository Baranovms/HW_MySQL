USE hw_3;

CREATE TABLE table1_salespeople
(
snum INT PRIMARY KEY UNIQUE,
sname CHAR(10) NOT NULL,
city CHAR(10) NOT NULL,
comm DECIMAL(5,2) NOT NULL
);

INSERT INTO table1_salespeople(snum, sname, city, comm)
VALUES
(1001, "Peel", "London", 0.12),
(1002, "Serres", "San Jose", 0.13),
(1004, "Motika", "London", 0.11),
(1007, "Rifkin", "Barcelona", 0.15),
(1003, "Axelrod", "New York", 0.10);