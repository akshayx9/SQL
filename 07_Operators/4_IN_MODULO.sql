-- IN operator

SELECT title, author_lname FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, author_lname FROM books WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');

-- Modulo (%)

SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 !=0;