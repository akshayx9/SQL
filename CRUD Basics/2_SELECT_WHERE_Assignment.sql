-- Write the SQL that selects cat_id:

SELECT cat_id FROM cats;

-- Write the SQL that selects name & breed for all rows:

SELECT name, breed FROM cats;

-- Write the SQL that selects name & age where the breed is Tabby:

SELECT name, age FROM cats WHERE breed = 'Tabby';

-- Write the SQL that selects cat_id & age where both are same:

SELECT cat_id, age FROM cats WHERE cat_id = age;