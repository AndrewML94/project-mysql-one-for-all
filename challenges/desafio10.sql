CREATE TABLE IF NOT EXISTS favorite (
  user INT NOT NULL,
  song INT NOT NULL,
  CONSTRAINT PRIMARY KEY (user, song),
    FOREIGN KEY (user) REFERENCES user (id_user),
    FOREIGN KEY (song) REFERENCES music (id_music)
);

INSERT INTO favorite(user, song)
	VALUES
	  (1, 3),
    (1, 6),
    (1, 10),
    (2, 4),
    (3, 1),
    (3, 3),
    (4, 7),
    (4, 4),
    (5, 10),
    (5, 2),
    (8, 4),
    (9, 7),
    (10, 3);