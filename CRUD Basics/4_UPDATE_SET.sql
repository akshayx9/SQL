-- UPDATE - altering existing data

-- Update an entire column:

UPDATE employees SET last_name = 'roosterbeard';

-- Another Update:

UPDATE employees SET current_status = 'laid-off', last_name = 'who cares';

SELECT * FROM employees;

-- Another Example

-- Change tabby cats to shorthair:

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';

-- Another update:

UPDATE cats SET age=14 WHERE name='Misty';

SELECT * FROM cats;