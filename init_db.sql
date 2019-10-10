BEGIN;

SET client_encoding = 'LATIN1';

CREATE TABLE employees (
    ssn VARCHAR(11),
    first VARCHAR(50),
    last VARCHAR(50),
    year_of_birth INT,
    city VARCHAR(50)
);

CREATE TABLE jobs (
    ssn VARCHAR(11),
    company VARCHAR(50),
    salary INT,
    experience INT
);

COMMIT;