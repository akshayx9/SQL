-- Greater Than

SELECT * FROM books WHERE released_year > 2005;

SELECT * FROM books WHERE pages > 500;

-- Less Than

SELECT * FROM books WHERE released_year < 2000 ORDER BY released_year;

SELECT * FROM books WHERE pages < 200;

-- Less than/Greater than or equal to

SELECT title, released_year FROM books WHERE released_year >= 2010;

SELECT title, released_year FROM books WHERE released_year <= 1985;