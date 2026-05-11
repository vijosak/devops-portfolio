# Agile Board – Portfolio Project

## Sprint 1 (current)

**Goal**: Build CI/CD pipeline and monitoring integration

| Story ID | User Story | Acceptance Criteria | Priority | Estimate | Status |
|----------|------------|---------------------|----------|----------|--------|
| PM-01 | As a developer, I want a Django app with PostgreSQL so I can test the pipeline. | Docker Compose starts app; home page returns "Hello DevOps Portfolio!"; DB migrations run automatically. | Must have | 3 | Done |
| PM-02 | As a DevOps engineer, I want CI/CD that builds, tests, and pushes images to GHCR. | GitHub Actions workflow triggers on push; all tests pass; image appears in GHCR. | Must have | 5 | Done |
| PM-03 | As a SRE, I want Prometheus metrics from the app so I can monitor performance. | Prometheus scrapes /metrics; target shows UP in monitoring CI. | Must have | 3 | Done |
| PM-04 | As a developer, I want structured logging so I can debug issues. | Container logs aggregated in Grafana via Loki; queryable by service. | Should have | 2 | In progress |
| PM-05 | As a project manager, I want a risk register and stakeholder comms plan. | Documents created and reviewed; stored in repo. | Should have | 1 | In progress |

## Sprint 2 (planned)

**Goal**: Complete observability, Terraform, and Kubernetes CI

| Story ID | User Story | Priority | Estimate |
|----------|------------|----------|----------|
| PM-06 | Add distributed tracing (Tempo) | Could have | 8 |
| PM-07 | Terraform remote state & full VPC/RDS module | Must have | 5 |
| PM-08 | Kubernetes CI using GHCR image (not local load) | Should have | 3 |
| PM-09 | Create project charter & status report template | Must have | 2 |

## Retrospective (Sprint 1)

**What went well**: CI/CD green, Prometheus scraping works, secrets handling solid.
**What could be improved**: DNS issues caused delays; need to standardise environment.
**Actions**: Add DNS troubleshooting to runbook; pre‑pull images in CI.
