-- ALTER TABLE

-- Using ALTER TABLe to add a new column to an existing table

ALTER TABLE companies
ADD COLUMN phone VARCHAR(15);

ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

SELECT * FROM companies;

-- Using ALTER TABLE to drop a column

ALTER TABLE companies
DROP COLUMN phone;

ALTER TABLE companies
DROP COLUMN employee_count;

SELECT * FROM companies;

-- Renaming Table

RENAME TABLE companies TO suppliers;

SELECT * FROM suppliers;

ALTER TABLE suppliers RENAME TO companies;

SELECT * FROM companies;

-- Renaming Column

ALTER TABLE companies
RENAME COLUMN name TO company_name;

SELECT * FROM companies