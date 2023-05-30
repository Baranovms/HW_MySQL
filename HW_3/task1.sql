USE hw_3;

-- Задание №1
SELECT city, sname, sname, comm
FROM table1_salespeople;

-- Задание №2
SELECT DISTINCT(cname) AS name, rating 
FROM table2_customers; 

-- Задание №3
SELECT DISTINCT(cname) AS name 
FROM table1_salespeople;

-- Задание №4
SELECT cname
FROM table2_customers
WHERE cname LIKE 'G%';

-- Задание №5
SELECT *
FROM table3_orders
WHERE amt > 1000;

-- Задание №6
SELECT MIN(amt)
FROM table3_orders;

-- Задание №7
SELECT *
FROM table2_customers
WHERE (rating > 100) AND (city != "Rome");