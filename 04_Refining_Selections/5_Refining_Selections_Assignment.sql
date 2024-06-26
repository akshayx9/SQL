-- Write a query that results in output with book titles that contain the word 'stories'

SELECT title FROM books WHERE title LIKE '%stories%';

-- Find the longest book

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- Print a summary containing the title and year for the 3 most recent books

SELECT CONCAT(title, ' - ' , released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;

-- Find all the books with an author_lname that contains a space(" ")

SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- Find the 3 books with the lowest stock 

SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 1, 3;

-- Print the title and author_lname, sorted first by author_lname and the by title

SELECT title, author_lname FROM books ORDER BY author_lname, title;

-- Print a table with the text "MY FAV AUTHOR IS" in front of every author full name
-- End every sentence with an "!"
-- Sort the table by last name

SELECT CONCAT('MY FAVORITE AUTHOR IS ', UPPER(author_fname), ' ', UPPER(author_lname), '!') AS yell FROM books ORDER BY author_lname;