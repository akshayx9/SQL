-- GROUP BY HAVING clause

SELECT title, AVG(rating), COUNT(rating) AS review_count FROM full_reviews GROUP BY title HAVING COUNT(rating) > 1;

-- GROUP BY ROLL UP

SELECT title, AVG(rating), COUNT(rating) FROM full_reviews GROUP BY title WITH ROLLUP; 

SELECT released_year, AVG(rating), genre FROM full_reviews GROUP BY released_year, genre WITH ROLLUP;