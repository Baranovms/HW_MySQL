/*
1.	Создайте функцию, которая принимает кол-во сек и форматирует их в кол-во дней, часов, минут и секунд.
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
*/
CREATE DATABASE hw_6;
USE hw_6;
DELIMITER $$
CREATE PROCEDURE times(seconds INT)
BEGIN
    DECLARE days INT default 0;
    DECLARE hours INT default 0;
    DECLARE minutes INT default 0;

    WHILE seconds >= 86400 DO
    SET days = floor(seconds / 86400);
    SET seconds = seconds % 86400;
    END WHILE;

    WHILE seconds >= 3600 DO
    SET hours = floor(seconds / 3600);
    SET seconds = seconds % 3600;
    END WHILE;

    WHILE seconds >= 60 DO
    SET minutes = floor(seconds / 60);
    SET seconds = seconds % 60;
    END WHILE;

SELECT days, hours, minutes, seconds;
END $$
DELIMITER ;

CALL times(125912);



