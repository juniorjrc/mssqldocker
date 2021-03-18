#!/bin/bash

export MSSQL_DB=TEST_SPRINGBOOT_REST_WS
export MSSQL_USER=ADMCONTRACTZIT
export MSSQL_PASSWORD=eNbqetRjVQBcex
export SA_PASSWORD=GZVjGgOs3Z6D

# Start SQL Server
/opt/mssql/bin/sqlservr &

# Start the script to create the DB and user
/usr/config/configure-db.sh

# Call extra command
eval $1
