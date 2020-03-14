-- Postgres script to be run only once for creating the SonarQube database and user
-- psql -f this_file.sql
-- if you use a SQL proxy, you can execute something like:   psql -h 127.0.0.1 -U postgres -p 6666 -f setup_sonarqube_db.sql 

-- The PASSWORD can be found in LastPass
CREATE ROLE sonar PASSWORD '[PASSWORD]' LOGIN;

GRANT sonar TO postgres;

CREATE DATABASE sonarqube OWNER sonar;