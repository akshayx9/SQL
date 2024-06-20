-- Create a people table with the following columns:
-- first_name(20), last_name(20), age

-- Insert 1st person: first_name - 'Tina', last_name - 'Belcher', age - 13
-- Insert 2nd person: first_name - 'Bob', last_name - 'Belcher', age - 42
-- Multiple Insert:
-- first_name - 'Linda', last_name - 'Belcher', age - 45
-- first_name - 'Phillip', last_name - 'Frond', age - 38
-- first_name - 'Calvin', last_name - 'Fischoeder', age - 70

 

CREATE TABLE people
  (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
  );


INSERT INTO people(first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);

INSERT INTO people(age, last_name, first_name)
VALUES (42, 'Belcher', 'Bob');

INSERT INTO people(first_name, last_name, age)
VALUES
    ('Linda', 'Belcher', 45),
    ('Phillip', 'Frond', 38),
    ('Calvin', 'Fischoeder', 70);


SELECT * FROM people;