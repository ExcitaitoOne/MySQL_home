CREATE DATABASE IF NOT EXISTS less_2;
USE less_2;
DROP TABLE IF EXISTS  mpvie;
CREATE TABLE movie
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(45) NOT NULL,
    title_eng VARCHAR(45),
    `release_year` YEAR, -- YYYY
    count_min INT,
    storyline TEXT
);