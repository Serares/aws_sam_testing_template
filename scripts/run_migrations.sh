#!/bin/bash

GOOSE_PATH=$(command -v goose)
PG_CONNECTION_URL="postgresql://$PG_USER:$PG_PASSWORD@$PG_HOST:$PG_PORT/$PG_DB"

if ["$GOOSE_PATH"]; then
    echo "Using goose to run migrations..."

fi
