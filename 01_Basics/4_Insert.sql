-- Insert cat data into cats table:

INSERT INTO cats (name, age) 
VALUES ('Blue Steele', 5);

-- And another:

INSERT INTO cats (name, age) 
VALUES ('Jenkins', 7);

-- Multiple Inserts:

INSERT INTO cats (name, age) 
VALUES 
  ('Meatball', 5), 
  ('Turkey', 1), 
  ('Potato Face', 15);

-- To view all rows with added data in our table:

SELECT * FROM cats;