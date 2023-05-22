CREATE DATABASE if NOT EXISTS mobile_base;
USE mobile_base;
DROP TABLE IF EXISTS mobile;
CREATE TABLE mobile
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	product_name VARCHAR(45),
    manufacture VARCHAR(45),
    count_n INT,
    price INT
);
INSERT mobile(product_name, manufacture, count_n, price)
VALUE 
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Sumsung', 2, 56000),
('Galaxy S8', 'Sumsung', 1, 41000),
('P20Pro', 'Huawei', 5, 36000);

SELECT id, product_name, count_n
FROM mobile
WHERE
	count_n >= 2;
    
SELECT id, manufacture, count_n, price
FROM mobile
WHERE
	manufacture = "Sumsung";

SELECT id, product_name, count_n, price
FROM mobile
WHERE count_n * price > 100000 AND count_n * price < 145000;

SELECT id, product_name, manufacture
FROM mobile
WHERE product_name LIKE "%iphone%";

SELECT id, product_name, manufacture
FROM mobile
WHERE product_name LIKE "%galaxy%";

SELECT id, product_name, manufacture
FROM mobile
WHERE product_name RLIKE "[0-9]";

SELECT id, product_name, manufacture
FROM mobile
WHERE product_name LIKE "%8%";


