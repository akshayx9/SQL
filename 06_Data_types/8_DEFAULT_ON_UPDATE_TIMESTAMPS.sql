-- Create a captions table

CREATE TABLE captions (
    text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO captions(text) VALUES('just chilling'), ('beautiful sunset');

SELECT * FROM captions;

CREATE TABLE captions2 (
    text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP on UPDATE CURRENT_TIMESTAMP
);

INSERT INTO captions2(text) VALUES('I love life');

UPDATE captions2 SET text='I love life!!!!';

SELECT * FROM captions2;