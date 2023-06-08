CREATE DATABASE hw_5;
USE hw_5;
CREATE TABLE Trains
(
    train    INT, 
    station character varying(20),
    station_time time
		
);

INSERT INTO Trains (train, station, station_time) VALUES (110, "San Francisco", "10:00:00");
INSERT INTO Trains (train, station, station_time) VALUES (110, "Redwood City", "10:54:00");
INSERT INTO Trains (train, station, station_time) VALUES (110, "Palo Alto", "11:02:00");
INSERT INTO Trains (train, station, station_time) VALUES (110, "San Jose", "12:35:00");
INSERT INTO Trains (train, station, station_time) VALUES (120, "San Francisco", "11:00:00");
INSERT INTO Trains (train, station, station_time) VALUES (120, "Palo Alto", "12:49:00");
INSERT INTO Trains (train, station, station_time) VALUES (120, "San Jose", "13:30:00");

SELECT * FROM Trains;