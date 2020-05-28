--Exo1
CREATE DATABASE `stockImages` CHARACTER SET `uft8`;

--Exo2
DROP DATABASE `stockImages`;

--Exo3
CREATE DATABASE IF NOT EXISTS `mediaBank` CHARACTER SET `uft8`;

--Exo4
CREATE USER 'wilfried'@'localhost' IDENTIFIED BY 'lamanu';
GRANT ALL PRIVILEGES ON mediabank.* TO 'wilfried'@'localhost';


--Exo5
CREATE TABLE images
(
    	id INT PRIMARY KEY AUTO_INCREMENT,
        name varchar(50),
    	link varchar(255),
    	width INT,
    	height INT,
    	format varchar(5),
    	description TEXT,
    	publicationDate DATE
);
    	


CREATE TABLE videos
(
    	id INT PRIMARY KEY AUTO_INCREMENT,
        name varchar(50),
    	link varchar(255),
    	duration TIME,
    	description TEXT,
    	publicationDate DATE
);



--Exo6
INSERT INTO images (id, name, link, width, height, format, description, publicationDate)
VALUES ('1', 'orwellPortrait', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg', '1176', '1596', 'jpg', 'Portrait de l’auteur Geroge Orwell', '2020-05-10'),
('2', 'steinbeckPortrait', 'https://live.staticflickr.com/525/18306511889_1c9606e8ea_z.jpg', '640', '476', 'jpg', 'Portrait de l’auteur John Steinbeck', '2020-01-02');

SELECT * FROM `images` 


INSERT INTO videos (id, name, link, duration, description, publicationDate)
VALUES ('1', '1984_trailer', 'https://www.youtube.com/watch?v=Z4rBDUJTnNU&t=4s', '2 :39', 'Bande annonce du film 1984', '2020-05-15'),
('2', 'micemen_trailer', 'https://www.youtube.com/watch?v=2QnM6hsXxNE', '10 :41', 'Bande annonce du film des Souris et des hommes', '2020-01-02');

SELECT * FROM `videos`



--Exo7
UPDATE images
SET publicationDate = '2020-05-27'
WHERE id = 1

SELECT * FROM `images` WHERE id = 1

UPDATE videos
SET duration = '1 :41'
WHERE id = 2

SELECT * FROM `videos` WHERE id = 2


--Exo8

DELETE FROM images
WHERE id = 2

DELETE FROM videos
WHERE id = 1

--Exo9
DROP TABLE videos