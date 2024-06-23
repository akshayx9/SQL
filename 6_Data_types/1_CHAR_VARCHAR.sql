-- CHAR & VARCHAR

CREATE TABLE states(abbr CHAR(2)); -- Fixed size

INSERT INTO states(abbr) VALUES('CA'), ('NY'), ('X'); -- Adding a value like 'Ohio' here will give an error

SELECT * FROM states;

CREATE TABLE friends(name VARCHAR(10)); -- Storage size of entries varies depending on their length

INSERT INTO friends(name) VALUES('tom'), ('juan pablo'), ('james'); -- Similar to CHAR a value exceeding the max length will give an error

SELECT * FROM friends

