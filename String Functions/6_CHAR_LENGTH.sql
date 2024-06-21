-- Using CHAR_LENGTH to find the number of chars in a string

SELECT CHAR_LENGTH('Hey!');

-- Finding number of chars in each book title

SELECT CHAR_LENGTH(title) AS len, title FROM books;