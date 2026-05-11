# Kubernetes Manifests

Deployment, Service, and Ingress for the Django portfolio app.

## Secrets

All sensitive values (database password, connection string) are stored in a Kubernetes Secret named `postgres-secret`.
- A sample is provided in `postgres-secret.yaml` with safe defaults.
- **Locally:** edit `postgres-secret.yaml` with your real values and apply it before deploying.
- **CI/CD:** the secret is generated from GitHub Actions secrets (never stored in the repo).

## Apply to a local cluster

```bash
# 1. Create the secret (edit the file first or use env vars)
kubectl apply -f postgres-secret.yaml

# 2. Deploy PostgreSQL
kubectl apply -f postgres-deployment.yaml
kubectl wait --for=condition=ready pod -l app=postgres --timeout=120s

# 3. Deploy the Django app
kubectl apply -f deployment.yaml -f service.yaml
kubectl rollout status deployment/portfolio-app

# 4. Test
kubectl port-forward svc/portfolio-service 8001:80
curl http://localhost:8001
# Should return: Hello DevOps Portfolio!
```

## CI Test
GitHub Actions workflow (`.github/workflows/k8s.yml`) automatically creates a `kind` cluster, generates the secret from GitHub secrets, deploys everything, and tests the endpoint.
