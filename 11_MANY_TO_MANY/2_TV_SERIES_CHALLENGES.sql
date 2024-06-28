-- Title with ratings

SELECT title, rating FROM series
JOIN reviews ON series.id = reviews.series_id;

-- Title with avg ratings sorted from lowest to highest

SELECT title, ROUND(AVG(rating), 2) AS avg_rating FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY title ORDER BY avg_rating;

-- Reviwers first and last name with the ratings they have given

SELECT first_name, last_name, rating FROM reviewers
JOIN reviews ON reviewers.id = reviews.reviewer_id;

-- Find the titles of unreviewed series

SELECT title AS unreviewed_series FROM series
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating IS NULL;

-- Genre with avg_rating

SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY genre ORDER BY avg_rating;

-- First & last names of reviewers with the number of reviews they gave
-- the min and max review they gave along with average and their status

SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    CASE
    WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
    WHEN COUNT(rating) >= 0 THEN 'ACTIVE'
    ELSE 'INACTIVE'
    END AS status
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS status 
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

-- Title with rating and reviewer name

SELECT title, rating, CONCAT (first_name, ' ', last_name) AS reviewer FROM reviews
JOIN series ON reviews.series_id = series.id
JOIN reviewers ON reviews.reviewer_id = reviewers.id;