-- Adding CONSTRAINTS using ALTER TABLE

ALTER TABLE houses 
ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);

-- Dropping CONSTRAINTS using ALTER TABLE

ALTER TABLE houses DROP CONSTRAINT positive_pprice;