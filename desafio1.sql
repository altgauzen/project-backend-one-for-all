DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE PLANS(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  name_plan VARCHAR(45) NOT NULL,
  price_plan DOUBLE NOT NULL
) engine = InnoDB;

INSERT INTO PLANS(name_plan, price_plan)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

CREATE TABLE USERS(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  name_user VARCHAR(45) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES PLANS (plan_id)
) engine = InnoDB;
  
INSERT INTO USERS(name_user, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);
  
  CREATE TABLE ARTISTS(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  name_artist VARCHAR(95) NOT NULL
) engine = InnoDB;

INSERT INTO ARTISTS(name_artist)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

CREATE TABLE ALBUMS(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  title_name VARCHAR(95) NOT NULL,
  artist_id INT,
  FOREIGN KEY (artist_id) REFERENCES ARTISTS (artist_id)
) engine = InnoDB;

INSERT INTO ALBUMS(title_name, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

CREATE TABLE SONGS(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  title_song VARCHAR(95) NOT NULL,
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES ALBUMS (album_id)
) engine = InnoDB;

INSERT INTO SONGS(title_song, album_id)
VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Honey, So Do I", 3),
  ("Magic Circus", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Thang Of Thunder", 5),
  ("Without My Streets", 5),
  ("Words Of Her Life", 5);
  
CREATE TABLE `HISTORY`(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES USERS (user_id),
  FOREIGN KEY (song_id) REFERENCES SONGS (song_id)  
) engine = InnoDB;

INSERT INTO `HISTORY`(user_id, song_id)
VALUES
  (1, 1),
  (1, 7),
  (1, 12),
  (1, 16),
  (2, 15),
  (2, 18),
  (2, 2),
  (2, 13),
  (3, 4),
  (3, 16),
  (3, 7),
  (4, 3),
  (4, 17),
  (4, 11);

CREATE TABLE FOLLOWING_ARTISTS(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES USERS (user_id),
  FOREIGN KEY (artist_id) REFERENCES ARTISTS (artist_id)
) engine = InnoDB;

INSERT INTO FOLLOWING_ARTISTS(user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
