-- IS NULL

SELECT * FROM books WHERE author_lname IS NULL;

SELECT * FROM books WHERE author_lname IS NOT NULL;

DELETE FROM books WHERE title IS NULL; 