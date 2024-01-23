-- Create table of users if it dosen't exist already
CREATE TABLE IF NOT EXIST users (
	--unique identifier for each user (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,

	--users Email (maximum 255 characters)
	email VARCHAR(255) NOT NULL UNIQUE,

	--Name of the user (maximum 255 characters)
	name CARCHAR(255)
);

