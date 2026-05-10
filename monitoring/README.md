# Monitoring Stack

Docker Compose stack with **Prometheus** and **Grafana**.

## What it monitors

- **Prometheus** scrapes itself (`localhost:9090`) and the Django app (`172.17.0.1:8000` in CI, or `host.docker.internal:8000` locally).
- **Grafana** is pre‑configured at `http://localhost:3000` (admin/admin). Add Prometheus as a data source to build dashboards.

## Quickstart

```bash
docker compose up -d
```
- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000

## Credentials & Environment

- Default Grafana credentials are **admin / admin**.
- To change the Grafana password, set the `GRAFANA_PASSWORD` environment variable before starting:
  ```bash
  export GRAFANA_PASSWORD=MySecurePassword
  docker compose up -d
  ```
- In CI, the Grafana password is not injected; it uses the safe default. If real secrets are needed, add a `GRAFANA_PASSWORD` GitHub secret and pass it to the workflow step.

## CI Testing

The pipeline (`.github/workflows/monitoring.yml`) does the following:
1. Starts the Django app (with PostgreSQL) – database credentials are injected from GitHub Secrets.
2. Starts Prometheus & Grafana (no secrets required).
3. Waits for up to 60s until Prometheus reports the `django` target as `up`.
4. Fails if the scrape never succeeds, printing logs for debugging.
