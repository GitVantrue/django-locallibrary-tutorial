#!/bin/bash

set -e

cat << EOF | PGPASSWORD=Orw5F_BMv3NeDV8NPw-z5_fbNmfpZe psql -h locallibrary-prod.c6pkffcrrwx8.ap-northeast-2.rds.amazonaws.com -U postgres
CREATE DATABASElocal_library;
CREATE USER local_library WITH PASSWORD 'asdf1234';
GRANT ALL PRIVILEGES ON DATABASE local_library TO local_library;
ALTER USER local_library CREATEDB;
EOF
