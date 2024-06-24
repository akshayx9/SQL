-- NOT EQUAL

SELECT * FROM books WHERE released_year != 2017;

SELECT title, author_lname FROM books WHERE author_lname != 'Gaiman';

-- NOT LIKE

SELECT * FROM books WHERE title NOT LIKE '% %';

SELECT title, author_fname, author_lname FROM books WHERE author_fname NOT LIKE 'da%';

SELECT title FROM books WHERE title NOT LIKE '%e%';