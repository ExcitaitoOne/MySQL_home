-- Комментарий --
# Коментайрийalte
/* многострочный */ 

-- 1. создаем DB
#IF NOT EXISTS не создает если уже существет

CREATE DATABASE	IF NOT EXISTS Less_1;

-- 2 Подключение
USE Less_1;
DROP TABLE IF EXISTS student; -- еслди существует
CREATE TABLE student
(
-- имя столбцаф тип данных ограничитель
 id INT PRIMARY KEY AUTO_INCREMENT,
 firstname VARCHAR(45),
 email VARCHAR(45),
 mobile VARCHAR(45)
);

ALTER TABLE student
AUTO_INCREMENT = 1;

-- 4 заполднениеALTER
INSERT student(firstname, email, mobile)
VALUE
("Андрей", "ADSDA@ya.ru", "+7 8888 8888 8888"),
("Анатолий", "ADSDA@ya.ru", "+7 8888 8888 8888"),
("Алексей", "ADSDA@ya.ru", "+7 8888 8888 8888"),
("Анастасия", "ADSDA@ya.ru", "+7 8888 8888 8888"),
("Валерия", "ADSDA@ya.ru", "+7 8888 8888 8888"),
("Владимир", "ADSDA@ya.ru", "+7 8888 8888 8888");
SELECT * FROM student;
-- вывести ограниченное колличество сталюцовALTER
SELECT firstname, email
FROM student;
-- 7 поучим номер телефона и почту студента по имени антон
SELECT mobile, email, firstname
FROM student
WHERE firstname = "Андрей";

SELECT mobile, email, firstname
FROM student
WHERE firstname != "Андрей";

-- 9 вывести список всех студентов, именных на А
SELECT mobile, email, firstname
FROM student
WHERE firstname LIKE "А%н%";

