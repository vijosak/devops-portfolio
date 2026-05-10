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

To scrape the Django app, first start the `ci-cd-pipeline` stack, then adjust `prometheus.yml` target to `host.docker.internal:8000` or `172.17.0.1:8000` depending on your OS.

## CI Testing

The pipeline (`.github/workflows/monitoring.yml`) does the following:
1. Starts the Django app (with PostgreSQL).
2. Starts Prometheus & Grafana.
3. Waits for up to 60s until Prometheus reports the `django` target as `up`.
4. Fails if the scrape never succeeds, printing logs for debugging.
