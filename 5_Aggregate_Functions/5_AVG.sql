-- Using AVG to find the average released_year across all books

SELECT AVG(released_year) FROM books;

-- Finding avg number of pages

SELECT AVG(pages) FROM books;

-- Calculate the average stock quantity for books released in the same year using GROUP BY

SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;