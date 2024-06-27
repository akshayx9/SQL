-- CASE Statements

SELECT 
    title,
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS GENRE
FROM
    books;
    
-- Another Example

    SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS STOCK
FROM
    books;
    
-- A little more succinct way 

 SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <=70 THEN '**'
        WHEN stock_quantity <=100 THEN '***'
        WHEN stock_quantity <=140 THEN '****'
        ELSE '*****'
    END AS STOCK
FROM
    books;
    