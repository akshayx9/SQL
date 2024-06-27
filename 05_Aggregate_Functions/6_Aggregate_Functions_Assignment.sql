-- Print the number of books in the database

SELECT COUNT(*) FROM books;

-- Print out how many books were released in each year

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- Print out the total number of books in stock

SELECT SUM(stock_quantity) FROM books;

-- Average released_year for each author

SELECT CONCAT(author_fname, ' ', author_lname) AS author, AVG(released_year) FROM books GROUP BY author;

-- Find the full name of the author who wrote the longest book

SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- Print how many books were released in each release year along with avg number of pages in those books

SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year ORDER BY released_year; 