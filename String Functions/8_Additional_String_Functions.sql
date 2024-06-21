-- INSERT function

SELECT INSERT('Hello Bobby', 6, 0, ' There');
SELECT INSERT('Hello Bobby', 6, 6, ' There');

-- LEFT & RIGHT functions

SELECT LEFT('omghahalol!', 3);
SELECT RIGHT('omghahalol!', 4);

-- REPEAT function

SELECT REPEAT('ha', 4);

-- TRIM function

SELECT TRIM('   bar   ');
SELECT TRIM(LEADING '.' FROM '......san antonio..');
SELECT TRIM(TRAILING '.' FROM '......san antonio..');
SELECT TRIM(BOTH '.' FROM '......san antonio..');
