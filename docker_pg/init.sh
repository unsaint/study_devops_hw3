#!/bin/sh
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER test;
    ALTER USER test WITH PASSWORD 'test!#2022';
    CREATE DATABASE test owner test;
    GRANT ALL PRIVILAGES ON DATABASE test TO test;
EOSQL

