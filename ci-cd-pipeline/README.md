# Django + PostgreSQL with Docker Compose

A containerised Django application connected to a PostgreSQL database.

## Quickstart

```bash
docker compose up --build
Visit http://localhost:8000 to see "Hello DevOps Portfolio!".

Details
Dockerfile: Python 3.11, gunicorn as WSGI server.

docker-compose.yml: Defines web (Django) and db (PostgreSQL).

CI/CD: .github/workflows/ci-cd.yml builds the images, runs migrations, and tests the home page.
