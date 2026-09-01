# FinServ Digital: Security-Hardened Kubernetes Platform

Production-grade, security-hardened Kubernetes platform engineered for FinServ Digital, handling 180,000 daily transactions across 20 microservices for 2.4 million active users. Compliant with PCI-DSS Level 1 and RBI IT frameworks.

## Repository Structure
- docs/: Architecture, security, compliance, and operations guides
- namespaces/ & rbac/: Multi-tenant isolation and least-privilege access
- network-policies/: Default-deny zero-trust network rules
- vault/ & admission-control/: Secrets management and OPA/Gatekeeper validation
- audit/ & service-mesh/: API audit logging, Falco runtime rules, and Linkerd mTLS
- monitoring/ & helm/: HPA autoscaling, runbooks, and parameterized Helm charts
- daily-logs/: 15-day chronological engineering journey logs
