-- To use a database: 

USE pet_shop;

-- Creating Tables
 
CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);

CREATE TABLE dogs (
    name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);

-- To check whether the tables were created:
-- SHOW tables; - To view all tables in the database
-- SHOW COLUMNS FROM cats; (or) -- DESC cats; - To view the description of the table

-- To drop a table: DROP TABLE <table-name>;

-- To specifically drop the dogs table: DROP TABLE dogs;