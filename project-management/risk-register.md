# Risk Register

## Probability / Impact Matrix

| Probability | Low (1) | Medium (2) | High (3) |
|-------------|---------|------------|----------|
| High (3)    | 3       | 6          | 9        |
| Medium (2)  | 2       | 4          | 6        |
| Low (1)     | 1       | 2          | 3        |

**Scoring:** Probability * Impact = Risk Score. Score > 6 = High risk, 3‑6 = Medium, <3 = Low.

## Active Risks

| ID | Risk Description | Probability | Impact | Score | Mitigation | Contingency | Owner | Status |
|----|------------------|-------------|--------|-------|------------|-------------|-------|--------|
| R1 | GitHub Actions runner DNS failures delay CI | Medium (2) | Medium (2) | 4 | Pre‑pull images in CI; use static IPs for registry. | Fallback to local Docker cache. | DevOps Engineer | Open |
| R2 | Docker image size grows, increasing push time | Low (1) | Medium (2) | 2 | Use multi‑stage builds; regularly clean layers. | Acceptable for now. | DevOps Engineer | Open |
| R3 | Secrets accidentally committed | Low (1) | High (3) | 3 | Gitleaks pre‑commit + CI. Rotate secrets immediately on detection. | Revoke exposed secret, force‑push clean history. | All team members | Closed (controls in place) |
| R4 | PostgreSQL data loss in local/CI cluster | Low (1) | Medium (2) | 2 | PVC for persistent data; automated backups in prod. | Rebuild from migrations. | DevOps Engineer | Open |
