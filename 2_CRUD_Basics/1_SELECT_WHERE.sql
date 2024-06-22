-- CREATE - Creating a new dataset

-- Create a new cats table:

CREATE TABLE cats
(
cat_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
breed VARCHAR(100),
age INT
);

-- Insert some cats:

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
-- Read -  Retrieve & search data

-- To get all the columns:

SELECT * FROM cats;

-- To only get the age column:

SELECT age FROM cats;

-- To select multiple specific columns:

SELECT name, breed FROM cats;

-- Use WHERE to specify a condition:

SELECT * FROM cats WHERE age = 4;

-- Another example of above:

SELECT * FROM cats WHERE name = 'Egg';