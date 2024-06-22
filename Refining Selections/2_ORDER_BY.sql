-- Inserting a new book

-- INSERT INTO books(title, author_lname) VALUES('My Life', 'Steele');

-- Using ORDER BY to sort the books

SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname;

SELECT book_id, author_fname, author_lname FROM books ORDER BY author_fname;

SELECT book_id, author_fname, author_lname FROM books ORDER BY author_fname DESC;

-- Example of using ORDER BY on numbers

SELECT title, pages FROM books ORDER BY pages;

SELECT title, pages, released_year FROM books ORDER BY released_year;

-- Using ORDER BY with column number for shorter syntax

SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 4;

-- Using ORDER BY to sort by multiple columns

SELECT author_lname, released_year, title FROM books ORDER BY author_lname, released_year;

-- Using ORDER by to sort by aliases

SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books ORDER BY author;_