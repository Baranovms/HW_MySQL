/*
1.	Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов
*/

CREATE VIEW cars1 AS 
SELECT * FROM Cars
WHERE cost < 25000;

SELECT * FROM cars1;

/*
2.	Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) 
*/

ALTER VIEW cars1 AS
SELECT * FROM Cars
WHERE cost < 30000;

SELECT * FROM cars1;

/*
3. 	Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
*/

CREATE VIEW cars3 AS
SELECT * FROM Cars
WHERE name = "Audi" OR name = "Skoda";

SELECT * FROM cars3;