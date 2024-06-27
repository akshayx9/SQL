-- Using COUNT function to find the number of rows in a query

SELECT COUNT(*) FROM books;

SELECT COUNT(author_fname) FROM books;

-- Counting only unique author first names

SELECT COUNT(DISTINCT author_fname) FROM books;

-- Counting the years a book was release

SELECT COUNT(DISTINCT released_year) FROM books;

-- Counting the number of books with 'the' in the title

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';