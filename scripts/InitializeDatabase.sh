#!/bin/bash

set -e

cat << EOF | PGPASSWORD=I,4JRO4SCaSK8GJBZ0CHERUCgvpveM psql -h locallibrary-dev.c6pkffcrrwx8.ap-northeast-2.rds.amazonaws.com -U postgres
CREATE DATABASE IF NOT EXISTS local_library;
CREATE IF NOT EXISTS USER local_library WITH PASSWORD 'asdf1234';
GRANT ALL PRIVILEGES ON DATABASE local_library TO local_library;
ALTER USER local_library CREATEDB;
EOF
