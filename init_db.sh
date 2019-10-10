#!/bin/sh

# TODO: Create database and initialize database table structure
psql -c 'CREATE DATABASE jobtracker;'
psql -d jobtracker -f init_db.sql;

# TODO: Insert data into tables
psql -d jobtracker -c "COPY employees(ssn,first,last,year_of_birth,city) FROM '`pwd`/employees.csv' DELIMITER ',' CSV HEADER";
psql -d jobtracker -c "COPY jobs(ssn,company,salary,experience) FROM '`pwd`/jobs.csv' DELIMITER ',' CSV HEADER";

