-- Spring Cleaning

-- Create a new database for shirts

CREATE DATABASE shirts_db;

USE shirts_db;

-- Create a new table called shirts

CREATE TABLE shirts
(
shirt_id INT AUTO_INCREMENT PRIMARY KEY,
article VARCHAR(50),
color VARCHAR(50),
shirt_size VARCHAR(5),
last_worn INT 
);

-- Insert provided data

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
	('t-shirt', 'green', 'S', 200),
	('polo shirt', 'black', 'M', 10),
	('tank top', 'blue', 'S', 50),
	('t-shirt', 'pink', 'S', 0),
	('polo shirt', 'red', 'M', 5),
	('tank top', 'white', 'S', 200),
	('tank top', 'blue', 'M', 15);
    
-- Add a new purple polo shirt of size m last worn 50 days ago

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);

-- Select all shirts but only print out article and color

SELECT article, color FROM shirts;

-- Select all medium shirts & print out everything but shirt_id

SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';

-- Update all polo shirts & change their size to L

UPDATE shirts SET shirt_size = 'L' WHERE article = 'polo shirt';

-- Update the shirt last worn 15 days ago & change last_worn to 0

UPDATE shirts SET last_worn = 0 WHERE last_worn = 15;

-- Update all white shirts & change their size to 'XS' & color to 'off white'

UPDATE shirts SET shirt_size = 'XS', color = 'off white' WHERE color = 'white';

-- Delete all old shirts last worn 200 days ago

DELETE FROM shirts WHERE last_worn = 200;

-- Delete all tank tops

DELETE FROM shirts WHERE article = 'tank top';

-- Delete all shirts

DELETE FROM shirts;

-- Drop the entire shirts table

DROP TABLE shirts;