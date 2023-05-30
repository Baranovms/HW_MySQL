USE hw_2;

CREATE TABLE `hw_2`.`orders` (
    orderid INT NOT NULL AUTO_INCREMENT,
    employeeid VARCHAR(5) NOT NULL,
    amount DECIMAL(20, 2) NOT NULL,
    orderstatus VARCHAR(45) NOT NULL,
    PRIMARY KEY (orderid)
);

INSERT INTO orders (employeeid, amount, orderstatus)
VALUES
  ("b01",50.65,"OPEN"),
  ("b02",33.34,"OPEN"),
  ("b04",7.90,"CLOSED"),
  ("b03",58.30,"CLOSED"),
  ("b05",15.02,"CANCELLED"),
  ("b05",28.46,"CLOSED"),
  ("b02",23.70,"OPEN"),
  ("b03",84.01,"OPEN"),
  ("b07",29.08,"OPEN"),
  ("b06",23.53,"OPEN"),
  ("b03",58.08,"CLOSED"),
  ("b02",58.88,"OPEN"),
  ("b01",14.36,"CLOSED"),
  ("b05",93.59,"CLOSED"),
  ("b02",59.20,"CANCELLED"),
  ("b04",8.40,"CLOSED"),
  ("b02",94.67,"CLOSED"),
  ("b03",79.53,"CANCELLED"),
  ("b03",65.51,"CLOSED"),
  ("b06",83.78,"CLOSED");
  
SELECT orderid, orderstatus,
CASE orderstatus
    WHEN "OPEN" THEN 'Order is in open state.'
    WHEN "CLOSED" THEN 'Order is closed.'
    ELSE 'Order is cancelled.'
END AS order_summary
FROM orders;  