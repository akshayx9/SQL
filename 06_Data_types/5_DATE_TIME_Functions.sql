-- DATE Functions

SELECT birthdate, DAY(birthdate), DAYOFWEEK(birthdate) FROM people;

SELECT birthdate, MONTHNAME(birthdate) FROM people;

-- TIME functions

SELECT name, birthtime, HOUR(birthtime), MINUTE(birthtime), SECOND(birthtime) FROM people;