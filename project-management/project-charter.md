# Project Charter – DevOps Portfolio

## Project Purpose
To demonstrate real‑world DevOps, Cloud, and SRE skills through a portfolio of interconnected projects that are automated, monitored, and documented.

## Objectives
- Build a CI/CD pipeline for a Django app, including containerisation and image publishing.
- Implement monitoring (metrics & logs) with Prometheus, Grafana, and Loki.
- Deploy the application to Kubernetes and test deployments in CI.
- Provision cloud infrastructure (AWS) using Terraform.
- Apply SRE practices (SLOs, runbooks) and project management artifacts.
- Ensure security via secrets management and secret scanning.

## Scope
**In scope**: Pipeline automation, monitoring, logging, Kubernetes manifests, Terraform IaC, documentation, security tooling.
**Out of scope**: Production‑grade Kubernetes cluster, multi‑cloud, actual user management, advanced alerting, disaster recovery.

## Key Milestones

| Milestone | Target Date | Status |
|-----------|-------------|--------|
| CI/CD pipeline passes (build, test, push) | Done | ✅ |
| Prometheus scrapes Django metrics | Done | ✅ |
| Loki log aggregation in Grafana | Done | ✅ |
| Kubernetes CI (kind) deploys app | Done | ✅ |
| Grafana dashboard with metrics & logs | Done | ✅ |
| Terraform VPC/RDS module | Pending | 🔲 |
| Final documentation & case study | Pending | 🔲 |

## Roles
- **DevOps Engineer** (vijosak): Build pipelines, IaC, monitoring, security.
- **SRE** (vijosak): Define SLOs, runbooks, observability.
- **Project Manager** (vijosak): Agile board, risk/issue tracking, stakeholder comms.
