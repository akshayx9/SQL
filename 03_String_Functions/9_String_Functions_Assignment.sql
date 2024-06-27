-- Reverse and Uppercase the following sentence 'Why does my cat look at me with such hatred?'

SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?'));

-- Replace spaces in the book titles with '->'

SELECT REPLACE(title, ' ', '->') FROM books;

-- Print out the last name of the authors forwards and backwards

SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

-- Print the full name of the authors in upper case

SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;

-- Print the title of each book along with the release year in the same sentence

SELECT CONCAT(title, ' was released in ',  released_year) AS blurb FROM books;

-- Print book titles and the length of each title

SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

-- Print first 10 characters of a title followed by '...'
-- along with every authors last name followed by ',' and their first name
-- and stock_quantity as quantity along with ' in stock' being part of the sentence

SELECT CONCAT(SUBSTR(title, 1, 10), '...'), CONCAT(author_lname, ',', author_fname), CONCAT(stock_quantity, ' in stock') AS quantity FROM books;