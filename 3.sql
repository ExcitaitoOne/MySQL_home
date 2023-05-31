CREATE DATABASE IF NOT EXISTS less_3;
USe less_3;

DROP TABLE IF EXISTS staff;
CREATE TABLE staff
(
id INT PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(45) NOT NULL,
lastname VARCHAR(45) NOT NULL,
post VARCHAR(45),
seniority INT,
salary DECIMAL(8,2), # 8 знаков всего и 2 знака после запятой
age INT
);
INSERT staff(firstname, lastname, post, seniority,salary,age)
VALUES ("Петр", "Петров", "Начальник", 8, 70000, 30); -- id = 1
INSERT staff (firstname, lastname, post, seniority, salary, age)
VALUES
  ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
  ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
  ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
  ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
  ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
  ('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
  ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
  ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
  ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
  ('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
  ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
  ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

SELECT salary,
		id,
		concat(firstname, " ", lastname) as fullname
FROM staff
ORDER BY salary DESC; -- ASC 

SELECT salary,
		id,
		firstname, 
        lastname
FROM staff
ORDER BY lastname DESC, firstname DESC;

SELECT DISTINCT lastname
FROM staff
ORDER BY lastname
LIMIT 5;

-- Для каждой должности найдем среднюю зп макс зп и мин зп, разницу между мин и макс зп, колл сотрудниковALTER

SELECT
	post,
	round(AVG(salary),2) as avg_sall,
    MIN(salary) as min_salary,
    max(salary) as max_salary,
    COUNT(salary) as count_staff,
    max(salary) - min(salary) as diff
FROM staff
GROUP BY post;

-- Домашнее Задание

SELECT salary 
FROM staff
ORDER BY salary;

SELECT salary 
FROM staff
ORDER BY salary DESC;

SELECT 
	id,
	salary as "максимальная зарплата"
FROM staff
ORDER BY salary DESC
LIMIT 5;

SELECT DISTINCT
	post,
    SUM(salary)
FROM staff
GROUP BY post;

SELECT 
	COUNT(post) as "Колличество рабочих"
FROM staff
WHERE post = "Рабочий" and age > 24 and age < 49;

SELECT 
	 COUNT(DISTINCT post) as "Колличество должностей"
FROM staff;

SELECT DISTINCT
	 post
FROM staff
WHERE age < 30;



    






  