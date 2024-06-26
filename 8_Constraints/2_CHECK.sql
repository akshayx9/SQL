-- CHECK constraint

CREATE TABLE users (
    username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);

INSERT INTO users (username, age) VALUES ('bluethecat', 50);

-- INSERT INTO users (username, age) VALUES ('coltsteele', -3); - This will return an error as age cannot be below 0.

SELECT * FROM users;

CREATE TABLE palindromes (
word VARCHAR(100) CHECK(REVERSE(word) = word)
);

INSERT INTO palindromes (word) VALUES ('racecar'), ('mom');

-- INSERT INTO palindromes (word) VALUES ('mommy'); - This will return an error as the word is not the same when reversed.

SELECT * FROM palindromes;

-- Multiple-Column Checks

CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);

INSERT INTO companies (name, address) VALUES ('blackbird auto', '123 spruce');

-- Another example of the above

CREATE TABLE houses (
  purchase_price INT NOT NULL,
  sale_price INT NOT NULL,
  CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

INSERT INTO houses (purchase_price, sale_price) VALUES (100, 200);

-- Named Constraints

CREATE TABLE users2 (
    username VARCHAR(20) NOT NULL,
    age INT,
    CONSTRAINT age_not_negative CHECK (age > 0)
);

-- Inserting a negative value to see the error message

INSERT INTO users2 (username, age) VALUES ('chickenlady', -9);