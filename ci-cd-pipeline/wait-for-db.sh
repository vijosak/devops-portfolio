#!/bin/sh
set -e
host="$1"; port="$2"; user="$3"; password="$4"
shift 4
until PGPASSWORD="$password" pg_isready -h "$host" -p "$port" -U "$user"; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 2
done
>&2 echo "Postgres is up - executing command"
exec $@
