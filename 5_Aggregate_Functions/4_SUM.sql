-- Using SUM to find the sum of pages of all books

SELECT SUM(pages) FROM books;

-- Using SUM with GROUP BY

SELECT author_lname, SUM(pages) FROM books GROUP BY author_lname;

-- SUM doesn't work on non number values and just returns 0