-- Using REPLACE to change parts of a string

SELECT REPLACE('Hello World', 'Hell', '%$#@');

SELECT REPLACE('chese bread coffee milk', ' ', ' and ');

-- Using REPLACE to replace the spaces between book names with hypens

SELECT REPLACE(title, ' ', '-') FROM books;