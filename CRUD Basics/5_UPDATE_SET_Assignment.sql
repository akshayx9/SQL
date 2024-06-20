-- Change Jackson's name to Jack in cat's table:

UPDATE cats SET name = 'Jack' WHERE name = 'Jackson';

-- Change Ringo's breed to British Shorthair:

UPDATE cats SET breed = 'British Shorthair' WHERE name = 'Ringo';

-- Change both Maine Coons' age to 12:

UPDATE cats SET age = 12 WHERE breed = 'Maine Coon'