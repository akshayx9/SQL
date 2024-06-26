-- Using MODIFY to change an existing column's type

ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';

INSERT INTO companies (address) VALUES ('2554 rose lane');

SELECT * FROM companies;