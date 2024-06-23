-- TINYINT

CREATE TABLE parent (children TINYINT);

INSERT INTO parent(children) VALUES (2), (7), (0); -- TINYINT can only store small values which are in the range -128 to 127

-- SIGNED & UNSIGNED 

CREATE TABLE parent2 (children TINYINT UNSIGNED);

INSERT INTO parent(children) VALUES(3); -- As the data type is unsigned, no negative numbers can be inserted