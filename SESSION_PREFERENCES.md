# Session Preferences for DevOps Portfolio Work

## 1. Environment & Tools
- **OS:** WSL (Ubuntu) with Docker Desktop integration.
- **CLI first:** Always provide exact copy‑paste commands.
- **Shell:** Prefer `printf '%s\n' ...` for writing multi‑line files to avoid broken line endings.
- **VCS:** Use `gh` CLI for all GitHub interactions (triggering workflows, viewing logs, creating secrets).
- **Local Kubernetes:** `kind` cluster (not Docker Desktop K8s) for local testing.
- **Package manager:** `uv` for Python tool installation (`uv tool install`, `uvx`), not `pip`.

## 2. Security & Secrets Handling
- **No hardcoded secrets** anywhere in code or YAML files.
- **Secrets in CI:** GitHub Actions secrets injected into steps via `env:`.
- **Docker Compose:** Use `${VAR:-default}` syntax so stacks run with safe defaults locally, real secrets in CI.
- **Kubernetes:** Use native `Secret` objects; never plaintext in manifests. A `.yaml` sample with placeholders is acceptable for local dev.
- **Secret scanning:** Gitleaks runs on pre‑commit and in CI.

## 3. Documentation Style
- Keep READMEs **instructional**, not promotional. Recruiters will judge by badges and structure, not claims of professionalism.
- Use **tables** for project lists, **badges** from shields.io for pipeline statuses.
- All project directories should have a concise `README.md` explaining what, how to run, and how secrets are handled.
- Maintain an `ARCHITECTURE.md` with mermaid diagrams and clear flow descriptions.

## 4. Code & Configuration Quality
- **YAML:** Always ensure proper indentation (2 spaces, no tabs). Start `on:` at column 0.
- **Dockerfiles:** Multi‑stage where useful, no baked‑in passwords.
- **Workflows:** Include retry loops for flaky steps (e.g., waiting for Prometheus scrapes).
- **Healthchecks:** Add to Compose services when needed for CI startup order.

## 5. Portfolio Structure (what exists now)
devops-portfolio/
├── ci-cd-pipeline/ # Django + PostgreSQL with CI/CD, pushes to GHCR
├── terraform-aws/ # VPC, subnet, RDS (still evolving)
├── k8s-manifests/ # Kubernetes deployment, service, secrets
├── monitoring/ # Prometheus + Grafana, scrapes Django on 172.17.0.1:8000
├── sre-playbook/ # SLO, runbooks, incident response
├── project-management/ # Agile board, risk register
├── ARCHITECTURE.md
├── README.md
└── SESSION_PREFERENCES.md # This file

text

## 6. Recurring Patterns
- **Fixing shellcheck workflow:** remove unused lint steps or make them skip when no `.sh` files exist.
- **Prometheus scrape target:** Use `172.17.0.1:8000` on Linux runners (or `host.docker.internal` on macOS/Windows), not container DNS names.
- **CI for Kubernetes:** Build and load images into kind; create Secrets from GitHub Secrets on the fly.
- **CI for Monitoring:** Wait loop that checks `health` of Django target until `up`.

## 7. What to Avoid
- Overly declarative statements like “Credentials are never stored…” — just show how it’s done.
- Raw URLs in markdown badges — always use `[![...](image)](link)`.
- Using `kind` and Docker Desktop’s built‑in K8s simultaneously to avoid context confusion.
- Hardcoding `latest` tags in production workflows (fine for a portfolio).

## 8. When Asking for Help
- Share error messages exactly, with the command that produced them.
- Use `gh run view <run-id> --log | grep …` to extract relevant logs.
- Indicate whether you want a quick fix or a complete rewrite of a file.
