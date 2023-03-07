DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE plan (
  id_plan INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  plan_name VARCHAR(45) NOT NULL,
  plan_value DOUBLE NOT NULL
);

INSERT INTO plan (plan_name, plan_value)
VALUES
	('gratuito', 0),
  ('universitário', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);

CREATE TABLE user (
  id_user INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  plan INT NOT NULL,
  plan_subscription_date DATE NOT NULL,
  CONSTRAINT plan
    FOREIGN KEY (plan) REFERENCES plan (id_plan)
);

INSERT INTO user (user_name, age, plan, plan_subscription_date)
VALUES
	('Barbara Liskov', 82, 1, '2019-10-20'),
  ('Robert Cecil Martin',58, 1, '2017-01-06'),
  ('Ada Lovelace', 37, 4, '2017-12-30'),
  ('Martin Fowler', 46, 4, '2017-01-17'),
  ('Sandi Metz', 58, 4, '2018-04-29'),
  ('Paulo Freire', 19, 2, '2018-02-14'),
  ('Bell Hooks', 26, 2, '2018-01-05'),
  ('Christopher Alexander', 85, 3, '2019-06-05'),
  ('Judith Butler', 45, 3, '2020-05-13'),
  ('Jorge Amado', 58, 3, '2017-02-17');

CREATE TABLE artist (
  id_artist INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name_artist VARCHAR(100) NOT NULL
);

INSERT INTO artist (name_artist)
VALUES
	('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

CREATE TABLE following_artist (
  artist INT NOT NULL,
  user INT NOT NULL,
  CONSTRAINT PRIMARY KEY (artist, user),
    FOREIGN KEY (artist) REFERENCES artist (id_artist),
    FOREIGN KEY (user) REFERENCES user (id_user)
);

INSERT INTO following_artist (artist, user)
VALUES
	(1, 1),
  (2, 1),
  (3, 1),
  (1, 2),
  (3, 2),
  (2, 3),
  (4, 4),
  (5, 5),
  (6, 5),
  (6, 6),
  (1, 6),
  (6, 7),
  (3, 9),
  (2, 10);

CREATE TABLE album (
  id_album INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name_album VARCHAR(200) NOT NULL,
  artist INT NOT NULL,
  release_year YEAR NOT NULL,
  CONSTRAINT id_artist
    FOREIGN KEY (artist) REFERENCES artist (id_artist)
);

INSERT INTO album (name_album, artist, release_year)
VALUES
	('Renaissance', 1, 2022),
  ('Jazz', 2, 1978),
  ('Hot Space', 2, 1982),
  ('Falso Brilhante', 3, 1998),
  ('Vento de Maio', 3, 2001),
  ('QVVJFA?', 4, 2003),
  ('Somewhere Far Beyond', 5, 2007),
  ('I Put A Spell On You', 6, 2012);

CREATE TABLE music (
  id_music INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name_music VARCHAR(100) NOT NULL,
  duration INT NOT NULL,
  album INT NOT NULL,
  CONSTRAINT album
    FOREIGN KEY (album) REFERENCES album (id_album)
);

INSERT INTO music (name_music, duration, album)
VALUES
	('BREAK MY SOUL', 279, 1),
  ("VIRGO'S GROOVE", 369, 1),
  ('ALIEN SUPERSTAR', 116, 1),
  ("Don't Stop Me Now", 203, 2),
  ('Under Pressure', 152, 3),
  ('Como Nossos Pais', 105, 4),
  ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
  ('Samba em Paris', 267, 6),
  ("The Bard's Song", 244, 7),
  ('Feeling Good', 100, 8);

CREATE TABLE history (
  music INT NOT NULL,
  user INT NOT NULL,
  reproduction_date DATETIME NOT NULL,
  CONSTRAINT PRIMARY KEY (music, user),
    FOREIGN KEY (music) REFERENCES music (id_music),
    FOREIGN KEY (user) REFERENCES user (id_user)
);

INSERT INTO history (music, user, reproduction_date)
VALUES
	(8, 1, '2022-02-28 10:45:55'),
  (2, 1, '2020-05-02 05:30:35'),
  (10, 1, '2020-03-06 11:22:33'),
  (10, 2, '2022-08-05 08:05:17'),
  (7, 2, '2020-01-02 07:40:33'),
  (10, 3, '2020-11-13 16:55:13'),
  (2, 3, '2020-12-05 18:38:30'),
  (8, 4, '2021-08-15 17:10:10'),
  (8, 5, '2022-01-09 01:44:33'),
  (5, 5, '2020-08-06 15:23:43'),
  (7, 6, '2017-01-24 00:31:17'),
  (1, 6, '2017-10-12 12:35:20'),
  (4, 7, '2011-12-15 22:30:49'),
  (4, 8, '2012-03-17 14:56:41'),
  (9, 9, '2022-02-24 21:14:22'),
  (3, 10, '2015-12-13 08:30:22');