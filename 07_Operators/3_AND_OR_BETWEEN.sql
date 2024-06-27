-- Logical AND

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' AND released_year > 2010 AND title LIKE '%novel%';

SELECT title, pages FROM books WHERE CHAR_LENGTH(title) > 30 AND pages > 500;

SELECT title, released_year FROM books WHERE released_year >= 2004 AND released_year <= 2015;

-- Logical OR

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' OR released_year > 2010;

SELECT title, pages FROM books WHERE pages < 200 OR title LIKE '%stories%';

-- BETWEEN

SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;

SELECT title, pages FROM books WHERE pages BETWEEN 200 AND 300;

SELECT title, pages FROM books WHERE pages NOT BETWEEN 200 AND 300;

-- Comparing Dates & Times

SELECT * FROM people WHERE birthdate < '2005-01-01';

SELECT * FROM people WHERE YEAR(birthdate) < 2005;

SELECT * FROM people WHERE birthtime > '10:00:00';

SELECT * FROM people WHERE HOUR(birthtime) >= 10;

SELECT * FROM people WHERE birthtime BETWEEN CAST('09:00:00' AS TIME) AND CAST('11:00:00' AS TIME);

SELECT * FROM people WHERE HOUR(birthtime) BETWEEN 9 AND 11;