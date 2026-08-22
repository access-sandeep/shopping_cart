#!/bin/bash
set -e

echo ">>> Restoring database from backup tar file..."

pg_restore \
  --username="$POSTGRES_USER" \
  --dbname="$POSTGRES_DB" \
  --verbose \
  --no-password \
  /docker-entrypoint-initdb.d/shopping_cart_db.tar

echo ">>> Database restore complete."
