# DevOps & Cloud Portfolio

Real‑world projects demonstrating skills across **DevOps**, **Cloud Engineering**, **Site Reliability**, and **Project Management**.

## 📂 Projects

| Project | Description | Key Technologies |
|---------|-------------|------------------|
| **[ci-cd-pipeline](./ci-cd-pipeline/)** | Django + PostgreSQL application with a full CI/CD pipeline using GitHub Actions. | Django, PostgreSQL, Docker Compose, GitHub Actions |
| **[terraform-aws](./terraform-aws/)** | Infrastructure as Code – provisions an AWS EC2 instance. (Soon: VPC, RDS) | Terraform, AWS |
| **[k8s-manifests](./k8s-manifests/)** | Kubernetes deployment, service, and ingress manifests for the Django app. | Kubernetes, Docker |
| **[monitoring](./monitoring/)** | Prometheus and Grafana stack using Docker Compose for metrics and dashboards. | Prometheus, Grafana, Docker |
| **[sre-playbook](./sre-playbook/)** | SLO definitions, incident response process, and runbook templates. | SRE practices |
| **[project-management](./project-management/)** | Agile board snippets, risk register, and stakeholder communication templates. | Agile, Risk Management |

## 🚀 Quickstart

Each sub‑folder contains a dedicated `README.md` with usage instructions.  
To run the Django stack:

```bash
cd ci-cd-pipeline
docker compose up --build
The CI/CD pipeline is automatically triggered on each push – see the Actions tab for live runs.

✅ Pipeline Status
https://github.com/vijosak/devops-portfolio/actions/workflows/ci-cd.yml/badge.svg

📜 License
MIT – feel free to use these examples as a reference.
