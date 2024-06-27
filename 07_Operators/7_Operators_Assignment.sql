-- Select all books written before 1980

SELECT * FROM books WHERE released_year < 1980;

-- Select all books written by Eggers or Chabon

SELECT title, author_lname FROM books WHERE author_lname IN('Eggers', 'Chabon');

-- Select all the books written by Lahiri released before 2000

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- Select all books with page counts between 100 & 200

SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

-- Select all books where author's last name starts with a 'C' or 'S'

SELECT title, author_lname FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

-- Create a result where 
-- if the title contain 'stories' -> Short Stories
-- if the title is 'Just Kids' or 'A Heartbreaking Work of Staggering Genius' -> Memoir
-- everything else -> Novel

SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title IN('Just Kids', 'A Heartbreaking Work of Staggering Genius') THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM
    books;
    
-- Count the number of books written by each author

SELECT author_fname, author_lname,
	CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;