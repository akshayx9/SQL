-- Using UPPER & LOWER to change the case of chars in a string

SELECT UPPER('Hello World');

SELECT LOWER('Hello World');

-- Using UPPER to change the case of book titles

SELECT UPPER(title) FROM books;

-- Write a query that generates a column where results look like 'I LOVE "title" !!!'

SELECT CONCAT('I LOVE ', UPPER(title), ' !!!') FROM books;