# FinServ Digital: Least-Privilege RBAC Matrix & Persona Definitions

## 1. Persona Hierarchy & Scope
To satisfy PCI-DSS Req. 7 ("Restrict access to system components by business need") and Req. 8 ("Identify users and authenticate access")[cite: 1], FinServ Digital enforces strict least-privilege RBAC policies.

| Persona | Scope | Target Resources | Allowed Verbs | Prohibited Actions |
| :--- | :--- | :--- | :--- | :--- |
| **Platform Administrator** | Cluster-wide | `*` on `*`[cite: 1] | `*` (All verbs) | Direct unauthenticated access (Requires break-glass MFA) |
| **Namespace Administrator** | Namespace-scoped | Deployments, Services, ConfigMaps, Jobs | `get, list, watch, create, update, patch, delete` | Cluster-scoped resources, cross-namespace access[cite: 1] |
| **Developer** | Namespace-scoped (Dev/Staging) | Pods, Services, Deployments | `get, list, watch`, view logs (`pods/log`), exec (non-prod only) | Modify production workloads, read Secrets directly[cite: 1] |
| **Security Auditor** | Cluster-wide (Read-only) | Pods, Services, NetworkPolicies, RBAC, Audit logs | `get, list, watch` | Modify any cluster resource[cite: 1] |
| **CI/CD Service Account** | Namespace-scoped | Deployments, Services, ConfigMaps | `create, update, patch, get, list` | Read raw secrets, cross-namespace deployments[cite: 1] |
| **Monitoring Service Account** | Cluster-wide | Metrics endpoints, Pod health status | `get, list, watch` | Read Secrets or ConfigMaps[cite: 1] |
