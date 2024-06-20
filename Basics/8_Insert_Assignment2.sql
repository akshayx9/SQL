-- Define a table called employees,
-- and you should have the following columns:

-- id - number(auto increments) & primary key  
-- last_name - text, mandatory 
-- first_name - text, mandatory
-- middle name - text, not mandatory
-- age - number mandatory
-- current status - text, mandatory, defaults to 'employed'


CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    age INT NOT NULL,
    current_status VARCHAR(100) NOT NULL DEFAULT 'employed'
);

-- A test INSERT:

INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);