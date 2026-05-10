# Django + PostgreSQL with Docker Compose

A containerised Django application connected to a PostgreSQL database.  
CI/CD pipeline runs automatically on push to `main`.

## Quickstart

```bash
docker compose up --build
Visit http://localhost:8000 to see "Hello DevOps Portfolio!".

Credentials & Environment Variables
Local development – safe defaults are built into the Compose file. No action needed.

Custom secrets – copy .env.example to .env, edit the values, then run:

bash
docker compose --env-file .env up --build
CI/CD – credentials are stored as GitHub Actions secrets and injected at runtime.

How It Works
Dockerfile: Python 3.11, gunicorn, wait‑for‑database script.

docker-compose.yml: PostgreSQL + web, health checks ensure proper start order.

CI/CD (.github/workflows/ci-cd.yml): builds images, waits for DB, runs migrations, starts the web container, and tests the home page.
