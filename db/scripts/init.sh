# #!/bin/bash
# set -e

# # psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DATABASE" <<-EOSQL
# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_ADMIN" <<-EOSQL
#     CREATE USER $POSTGRES_USER WITH PASSWORD '$POSTGRES_PASSWORD';
#     CREATE DATABASE $POSTGRES_DATABASE;
#     GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DATABASE TO $POSTGRES_USER;
# EOSQL



# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
#     CREATE USER $POSTGRES_USER;
#     CREATE DATABASE $POSTGRES_DATABASE;
#     GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DATABASE TO $POSTGRES_USER;
# EOSQL


# psql -U "$POSTGRES_USER" -h ${PGHOST} -d postgres 
# -c "create user \"${PGUSER}\" with encrypted password '${PGUSERPASSWORD}'"
# psql -U ${PGADMINUSER} -h ${PGHOST} -d postgres -c "create database \"${PGDATABASE}\""
# psql -U ${PGADMINUSER} -h ${PGHOST} -d postgres -c "grant all privileges on database \"${PGDATABASE}\" to \"${PGUSER}\""