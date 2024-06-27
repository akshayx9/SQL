-- Using concat to combine strings

SELECT CONCAT('h', 'e', 'llo');

-- Using concat to combine first and last names of authors

SELECT CONCAT(author_fname, ' ', author_lname) FROM books;

-- Using concat with a seperator

SELECT CONCAT_WS('-', title, author_fname, author_lname) FROM books;