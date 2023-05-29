CREATE DATABASE IF NOT EXISTS home_work2;
USE home_work2;
DROP TABLE IF EXISTS sales;
CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    count_product INT
);
INSERT sales(order_date, count_product)
VALUE
(20220101,156),
(20220102,180),
(20220103,21),
(20220104,124),
(20220105,341);

SELECT 
id AS "Номер заказа",
CASE
	WHEN count_product < 100 
		THEN "Маленький заказ"
	WHEN count_product > 100 AND count_product < 300
		THEN "Средний заказ" 
	WHEN count_product > 300 
		THEN "Большой Заказ"
End AS "Тип заказа"
FROM sales; 

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    emplouyee_id VARCHAR(45),
    amount DECIMAL(5,2),
    order_status VARCHAR(45)
);

INSERT orders (emplouyee_id, amount, order_status)
VALUE
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANNSELED');

SELECT 
id AS Номер,
CASE 
	WHEN order_status = 'OPEN'
		THEN "Order is in open state"
	WHEN order_status = 'CLOSED'
		THEN "Order is closed"
	WHEN order_status = 'CANNSELED'
		THEN "Order is cancelled"
	ELSE "Что то не то"
END AS "full order status"
FROM orders;


