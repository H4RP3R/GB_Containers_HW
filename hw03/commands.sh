docker run --name postgres_db --rm -e POSTGRES_PASSWORD=pass -h $(hostname) -d postgres
docker exec -it postgres_db /bin/bash

su postgres
psql

create database employees;
use employees;
create table programmers(
    id int,
    first_name varchar(30),
    last_name varchar(30)
);
insert into programmers
values (1, 'Ivan', 'Ivanov'),
    (2, 'Maria', 'Frolova');

CREATE DATABASE employees;
\c employees;
CREATE TABLE programmers(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30)
);
INSERT INTO programmers (first_name, last_name)
VALUES ('Ivan', 'Ivanov'),
    ('Maria', 'Frolova');


SELECT * FROM programmers;
#  id | first_name | last_name 
# ----+------------+-----------
#   1 | Ivan       | Ivanov
#   2 | Maria      | Frolova
# (2 rows)
