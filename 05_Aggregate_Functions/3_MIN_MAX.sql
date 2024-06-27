-- Using MIN & MAX without grouping

SELECT MIN(released_year) FROM books;

SELECT MAX(pages) FROM books;

SELECT MIN(author_lname), MAX(author_lname) FROM books;

-- Using MIN & MAX as a subquery

SELECT * FROM books WHERE pages = (SELECT MIN(pages) FROM books);

SELECT * FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title, released_year FROM books WHERE released_year = (SELECT MIN(released_year) FROM books);

-- Using MIN & MAX with GROUP BY

-- Find the year each author published their first book

SELECT author_fname, author_lname, COUNT(*) AS books_written, MIN(released_year) AS earliest_release, MAX(released_year) AS latest_release FROM books GROUP BY author_lname, author_fname;