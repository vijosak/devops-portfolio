# Monitoring Stack

Docker Compose stack with **Prometheus** and **Grafana**.

## What it monitors

- **Prometheus** scrapes itself (`localhost:9090`) and the Django app (`172.17.0.1:8000` in CI, or `host.docker.internal:8000` locally).
- **Grafana** is pre‑configured with a Prometheus datasource and a dashboard for Django metrics.

## Quickstart

```bash
docker compose up -d
```
- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000 (admin/admin), then open the **Django App Metrics** dashboard.

## Included Dashboard

`dashboards/django.json` contains panels for:
- HTTP request rate per view and method
- 5xx error rate gauge

It is automatically loaded into Grafana on first start. You can modify it via the Grafana UI and export the updated JSON.

## Credentials & Environment

- Default Grafana credentials are **admin / admin**.
- To change the Grafana password, set the `GRAFANA_PASSWORD` environment variable before starting.
- In CI, the password is left as the safe default.

## CI Testing

The pipeline (`.github/workflows/monitoring.yml`) starts both stacks, waits for Prometheus to scrape the Django app, and verifies the target is `up`. Grafana is not tested directly in CI.
