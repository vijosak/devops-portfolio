# DevOps & Cloud Portfolio

Projects covering **DevOps**, **Cloud**, **SRE**, and **Project Management**.

---

## 📂 Projects

| Project | Description | Tech |
|---------|-------------|------|
| [ci-cd-pipeline](./ci-cd-pipeline/) | Django + PostgreSQL, CI/CD, pushes Docker image to GHCR | Django, PostgreSQL, Docker Compose, GitHub Actions, GHCR |
| [terraform-aws](./terraform-aws/) | VPC, subnet, security group, RDS via Terraform | Terraform, AWS |
| [k8s-manifests](./k8s-manifests/) | K8s deployment, service, ingress – tested in CI with kind | Kubernetes, kind |
| [monitoring](./monitoring/) | Prometheus + Grafana, scrapes Django app | Prometheus, Grafana, Docker |
| [sre-playbook](./sre-playbook/) | SLO definitions, runbooks, incident response | SRE practices |
| [project-management](./project-management/) | Agile board, risk register, stakeholder comms | Agile, Risk |

---

## 🚀 How to Run

Each sub‑folder has its own `README.md` with detailed steps.

**Quick start (Django stack):**
```bash
cd ci-cd-pipeline
docker compose up --build
```

**Credentials:**
- **Local dev**: defaults work out of the box.
- **Real secrets (optional)**: copy `.env.example` to `.env`, fill your values, then `docker compose --env-file .env up`.
- **CI/CD**: secrets are stored in GitHub Actions and injected into the pipeline automatically.

---

## 📊 Pipeline Status

| Pipeline | Status |
|----------|--------|
| Django CI/CD (push to GHCR) | [![CI/CD](https://img.shields.io/github/actions/workflow/status/vijosak/devops-portfolio/ci-cd.yml?branch=main)](https://github.com/vijosak/devops-portfolio/actions/workflows/ci-cd.yml) |
| Monitoring CI | [![Monitoring](https://img.shields.io/github/actions/workflow/status/vijosak/devops-portfolio/monitoring.yml?branch=main)](https://github.com/vijosak/devops-portfolio/actions/workflows/monitoring.yml) |
| Kubernetes CI | [![Kubernetes](https://img.shields.io/github/actions/workflow/status/vijosak/devops-portfolio/k8s.yml?branch=main)](https://github.com/vijosak/devops-portfolio/actions/workflows/k8s.yml) |

---

## 📜 License

MIT
