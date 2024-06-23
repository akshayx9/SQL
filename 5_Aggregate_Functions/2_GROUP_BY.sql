-- Using GROUP BY to group the rows together

SELECT author_lname FROM books GROUP BY author_lname;

-- Using COUNT with GROUP BY to find how many rows exist in each group

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- Printing author last name along with the number of books each of them wrote

SELECT author_lname, COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;

-- Grouping by released year

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

