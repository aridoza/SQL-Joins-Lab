#!/bin/sh

# TODO: Write queries to display:
# Employees working at macys
# Companies in Boston
# Employee with the highest salary
psql -d jobtracker -c "SELECT first,last FROM employees INNER JOIN jobs ON employees.ssn = jobs.ssn WHERE jobs.company = 'Macy''s'";
psql -d jobtracker -c "SELECT company FROM jobs INNER JOIN employees ON employees.ssn = jobs.ssn WHERE employees.city = 'Boston'";
psql -d jobtracker -c "SELECT first,last FROM employees INNER JOIN jobs ON employees.ssn = jobs.ssn WHERE salary = (SELECT MAX(salary) FROM jobs)";