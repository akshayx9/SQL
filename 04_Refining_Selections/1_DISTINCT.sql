-- Using DISTINCT to eliminate duplicate results only getting distinct results in a query

SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT released_year FROM books;

-- Finding distinct author full names

SELECT DISTINCT(CONCAT(author_fname, ' ', author_lname)) FROM books;

-- Without using concat

SELECT DISTINCT author_fname, author_lname FROM books;  