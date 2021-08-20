In this step you will create a keyspace and a table and populate them with some data.

cqlsh

CREATE KEYSPACE united_states WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE united_states;

CREATE TABLE cities_by_state(
    state text,
    name text,
    population int,
    PRIMARY KEY((state), name)
);

INSERT INTO cities_by_state (state, name, population) VALUES ('New York','New York City',8622357);
INSERT INTO cities_by_state (state, name, population) VALUES ('California','Los Angeles',4085014);
INSERT INTO cities_by_state (state, name, population) VALUES ('Illinois','Chicago',2670406);
INSERT INTO cities_by_state (state, name, population) VALUES ('Texas','Houston',2378146);
INSERT INTO cities_by_state (state, name, population) VALUES ('Arizona','Phoenix',1743469);
INSERT INTO cities_by_state (state, name, population) VALUES ('Pennsylvania','Philadelphia',1590402);
INSERT INTO cities_by_state (state, name, population) VALUES ('Texas','San Antonio',1579504);
INSERT INTO cities_by_state (state, name, population) VALUES ('California','San Diego',1469490);
INSERT INTO cities_by_state (state, name, population) VALUES ('Texas','Dallas',1400337);
INSERT INTO cities_by_state (state, name, population) VALUES ('California','San Jose',1036242);

SELECT * FROM cities_by_state;

SELECT * FROM cities_by_state WHERE state = 'California';
