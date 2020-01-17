CREATE DATABASE join_us IF NOT EXISTS;

USE join_us;

SELECT Database();

CREATE TABLE users (
	email VARCHAR(255) PRIMARY KEY,
	created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (email)
VALUES
	("keiti@meiti.com"),
	("peci@meci.io");
