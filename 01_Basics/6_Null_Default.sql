-- Using NOT NULL:

CREATE TABLE cats2 (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

-- Creating a table with a DEFAULT name & age specified:

CREATE TABLE cats3  (    
    name VARCHAR(20) DEFAULT 'no name provided',    
    age INT DEFAULT 99  
);

-- Insert a cat without a name to assign default value:

INSERT INTO cats3(age) VALUES(13);

-- Or a nameless, ageless cat to assign default values to both parameters:

INSERT INTO cats3() VALUES();

-- Combine NOT NULL and DEFAULT:

CREATE TABLE cats4  (    
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',    
    age INT NOT NULL DEFAULT 99 
);