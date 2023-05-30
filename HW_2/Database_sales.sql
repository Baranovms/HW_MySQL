USE hw_2;
CREATE TABLE `hw_2`.`sales` (
    id INT NOT NULL AUTO_INCREMENT,
    order_date DATE NOT NULL,
    amount INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO sales (order_date, amount)
VALUES
("2022-10-10", 269),
("2021-05-18", 114),
("2022-05-20", 165),
("2021-12-04", 360),
("2021-12-28", 392),
("2021-03-07", 449),
("2021-08-29", 358),
("2021-05-03", 215),
("2020-12-16", 242),
("2021-01-13", 65),
("2021-05-28", 237),
("2021-06-26", 225),
("2022-09-26", 379),
("2021-03-09", 340),
("2020-01-25", 344);

