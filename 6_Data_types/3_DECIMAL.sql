-- DECIMAL

CREATE TABLE products (price DECIMAL(5,2)); -- The first no. specifies total no. of digits & the 2nd no. specifies the no. of digits after decimal point.

INSERT INTO products(price) VALUES(4.50), (456.99);

SELECT * FROM products;

-- FLOAT & DOUBLE

CREATE TABLE nums(x FLOAT, y DOUBLE);

INSERT INTO nums(x,y) VALUES(1.123, 1.123), (1.12345678, 1.123456789876543234567);

SELECT * FROM nums;

