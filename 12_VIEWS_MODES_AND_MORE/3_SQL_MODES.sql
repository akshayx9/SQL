-- SQL MODES

-- To view current modes

SELECT @@GLOBAL.sql_mode; -- global mode

SELECT @@SESSION.sql_mode; -- session mode

-- Setting modes

SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';

SELECT 3/0;

-- STRICT_TRANS_TABLES

SET SESSION sql_mode = ''; -- turning off all the modes

INSERT INTO reviews(rating) VALUES('hi'); -- Inserting a text value in decimal type column with strict mode off

SELECT * FROM reviews;