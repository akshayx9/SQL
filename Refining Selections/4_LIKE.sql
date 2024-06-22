-- Using LIKE for better searching

SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%';

SELECT * FROM books WHERE title LIKE '%:%';

SELECT * FROM books WHERE author_fname LIKE '%n';

-- Using LIKE to search with number of characters

SELECT * FROM books WHERE author_fname LIKE '____';

-- Searching for results with wildcards like %, _ in their strings

SELECT * FROM books WHERE title LIKE '%\%%';

SELECT * FROM books WHERE title LIKE '%\_%';