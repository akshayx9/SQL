-- UNIQUE Constraint

CREATE TABLE contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO contacts (name, phone) VALUES ('billybob', '878213455');

-- INSERT INTO contacts (name, phone) VALUES ('timmytimtim', '878213455'); - This will give an error as the phone number provided isn't unique

SELECT * FROM contacts;

