# DevOps & Cloud Portfolio

Real‑world projects demonstrating **DevOps**, **Cloud Engineering**, **Site Reliability**, and **Project Management** skills.

---

## 📂 Projects

| Project | Description | Key Technologies |
|---------|-------------|------------------|
| **[ci-cd-pipeline](./ci-cd-pipeline/)** | Django + PostgreSQL app with a full CI/CD pipeline. Secrets handled via GitHub Actions. | Django, PostgreSQL, Docker Compose, GitHub Actions |
| **[terraform-aws](./terraform-aws/)** | Infrastructure as Code – provisions an AWS EC2 instance. (VPC, RDS upcoming) | Terraform, AWS |
| **[k8s-manifests](./k8s-manifests/)** | Kubernetes deployment, service, and ingress manifests for the Django app. | Kubernetes, Docker |
| **[monitoring](./monitoring/)** | Prometheus + Grafana stack via Docker Compose. | Prometheus, Grafana, Docker |
| **[sre-playbook](./sre-playbook/)** | SLO definitions, incident response process, and runbook templates. | SRE practices |
| **[project-management](./project-management/)** | Agile board snippets, risk register, and stakeholder communication templates. | Agile, Risk Management |

---

## 🚀 Quickstart

Each sub‑folder contains a `README.md` with specific instructions.  
To run the Django stack locally:

```bash
cd ci-cd-pipeline
docker compose up --build
The app uses safe defaults for local development (see .env.example).
For real credentials, copy .env.example to .env and fill in your secrets.

🔒 Security & Secrets Management
Credentials are never stored in code or logs.
This portfolio follows professional secrets‑handling practices:

Local development – Environment variables are loaded from a .env file (not committed). A sample .env.example is provided.

CI/CD pipeline – Secrets are stored in GitHub Actions Secrets and injected into Docker Compose steps. They are masked in run logs.

Docker Compose – Services use ${VAR:-default} syntax, so the stack runs out of the box with safe defaults for demos, but accepts real secrets in CI or production.

No hardcoded passwords – The Dockerfile no longer bakes passwords into its CMD; it reads environment variables at runtime.

All sensitive values (database user, password, database name) are passed through environment variables defined at runtime.

✅ Pipeline Status
https://github.com/vijosak/devops-portfolio/actions/workflows/ci-cd.yml/badge.svg

📜 License
MIT – free to use as a reference or starting point.
