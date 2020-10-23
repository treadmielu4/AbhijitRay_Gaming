CREATE DATABASE GAMINGPORTAL

USE GAMINGPORTAL

CREATE TABLE USER 
(
userId INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50),
email VARCHAR(50),
password VARCHAR(256), 
age INT NOT NULL,
balance DOUBLE(8,2) NOT NULL,
PRIMARY KEY (userId)
)

CREATE TABLE ADMIN
(
adminId INT NOT NULL
name VARCHAR(50),
email VARCHAR(50),
password VARCHAR(256), 
PRIMARY KEY (adminId)

)


CREATE TABLE GAME
(
gameId INT NOT NULL AUTO_INCREMENT,
gameName VARCHAR(50),
gameAmount INT NOT NULL,
PRIMARY KEY(gameId)
)

SELECT * FROM USER
SELECT * FROM ADMIN
SELECT * FROM GAME


DROP TABLE USER
DROP TABLE ADMIN
DROP TABLE GAME

DROP DATABASE GAMINGPORTAL

show tables

INSERT INTO GAME(game_id, game_name,game_amount)
VALUES (01, "Contra", 50);
INSERT INTO GAME (game_id, game_name,game_amount)
VALUES (02, "Mario", 60);
INSERT INTO  GAME(game_id, game_name,game_amount)
VALUES (03, "Pacman", 40);
INSERT INTO GAME (game_id, game_name,game_amount)
VALUES (04, "Motogp", 100);
INSERT INTO GAME (game_id, game_name,game_amount)
VALUES (05, "NFS", 150);
INSERT INTO GAME (game_id, game_name,game_amount)
VALUES (06, "Mortal Kombat", 180);
INSERT INTO GAME (game_id, game_name,game_amount)
VALUES (07, "Pinball", 50);


INSERT INTO ADMIN (admin_id,name,email,password)
VALUES (444, "ADMINI","admin@gmail.com","admin123");