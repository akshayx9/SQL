-- Using LIMIT to control the number of results

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 5;

SELECT book_id, title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 3, 2;