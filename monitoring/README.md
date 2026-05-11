# Monitoring Stack

Docker Compose stack with **Prometheus**, **Grafana**, and **Loki**.

## Components

- **Prometheus** scrapes Django metrics (`:8000/metmes`)
- **Grafana** visualises metrics and logs (dashboards pre‑loaded)
- **Loki** stores container logs
- **Promtail** tails Docker logs and ships them to Loki

## Quickstart

```bash
docker compose up -d
```
- Grafana: http://localhost:3000 (admin/admin)
- Prometheus: http://localhost:9090
- Loki API: http://localhost:3100

In Grafana, go to **Explore** → choose **Loki** datasource → query `{container="..."}` to search logs.

## Included Dashboards

`dashboards/django.json` – HTTP request rate, 5xx error gauge
Edit via Grafana UI, then export the updated JSON.

## Credentials

- Default Grafana: **admin / admin**
- To change: `export GRAFANA_PASSWORD=...` before `docker compose up`

## CI Testing

The pipeline (`.github/workflows/monitoring.yml`) starts both stacks, waits for Prometheus to scrape the Django app, and verifies the `django` target is `up`.
