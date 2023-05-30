/*
2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
*/
SELECT id, order_date, amount,
CASE TRUE
    WHEN amount < 100 THEN 'меньше 100'
    WHEN amount >= 100 AND amount <= 300 THEN '100-300'
    ELSE 'больше 300'
END AS order_size
FROM sales;