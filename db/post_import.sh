#!/bin/bash

# Indexes
psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -f indexes_post_import.sql
psql -h "${PG_HOST}" -U "${PG_USER}" -p "${PG_PORT}" -d "${PG_DB}" -f post_import_stats.sql
