-- Using substring fuction

SELECT SUBSTRING('Hello World', 2, 4);

-- Using substring function with just the starting index

SELECT SUBSTRING('Hello World', 7);

-- Using substring function & counting backwards from the end of the string

SELECT SUBSTRING('Hello World', -3);

-- Example where we just want to select the first 15 chars of a book name

SELECT SUBSTRING(title, 1, 15) AS short_title FROM books;

-- Getting the first character from every author's last name

SELECT SUBSTRING(author_lname, 1, 1) AS initial, author_lname FROM books;

-- Combining string functions

SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS short_title FROM books;

-- Another example to get author's initials

SELECT CONCAT(SUBSTR(author_fname, 1, 1), '.', SUBSTR(author_lname, 1, 1), '.') AS author_initials FROM books; 