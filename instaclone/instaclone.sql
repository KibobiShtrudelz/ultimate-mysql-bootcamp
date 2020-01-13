DROP instaclone;

CREATE DATABASE instaclone;

USE instaclone;

SELECT Database();

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
  	username VARCHAR(255) UNIQUE NOT NULL,
  	created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO users (username)
VALUES ("Snuki"),
	   ("Klatitashko"),
       ("Kotka");


INSERT INTO photos (image_url, user_id)
VALUES
    ("/dasdfsadsas", 1),
    ("/dasdfsadsas", 2),
    ("/dasdfsadsas", 3),
    ("/dasdfsadsas", 3);
