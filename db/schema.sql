CREATE DATABASE deck_db;

CREATE TABLE users(
  id INT AUTO_INCREMENT NOT NULL,
  user VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  username VARCHAR(45) NOT NULL UNIQUE,
  password VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE workouts(
  id INT AUTO_INCREMENT NOT NULL,
  workout VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE history(
  id INT AUTO_INCREMENT NOT NULL,
  date_completed DATETIME,
  timer VARCHAR(45) NOT NULL,
  difficulty INT NOT NULL,
  chosen_workouts VARCHAR(45) NOT NULL,
  deck_completed BOOLEAN DEFAULT FALSE,
  favorite BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (id)
);

