#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE $TEST_DATABASE;
    CREATE USER $TEST_USER WITH PASSWORD '$TEST_PASSWORD';
    GRANT ALL PRIVILEGES ON DATABASE $TEST_DATABASE to $TEST_USER;

    CREATE DATABASE $TEST_DATABASE2;
    CREATE USER $TEST_USER2 WITH PASSWORD '$TEST_PASSWORD2';
    GRANT ALL PRIVILEGES ON DATABASE $TEST_DATABASE2 to $TEST_USER2;
EOSQL
