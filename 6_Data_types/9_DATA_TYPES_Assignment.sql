-- What's a good use case for CHAR?

-- State abbreviations, Zipcodes are a good use case for CHAR over VARCHAR

-- Print out the current time & current date.

SELECT CURTIME();

SELECT CURDATE();

-- Print out the current day of the week (as number then as day name)

SELECT DAYOFWEEK(CURDATE());

SELECT DAYNAME(CURDATE());

-- Print out the current day and time using this format: mm/dd/yyyy

SELECT DATE_FORMAT(CURDATE(), '%c/%d/%Y');

-- Create a tweets table that stores: 
-- The Tweet content
-- A Username
-- Time it was created

CREATE TABLE tweets (
  tweet VARCHAR(140),
  username VARCHAR(20),
  created_at TIMESTAMP default CURRENT_TIMESTAMP
);