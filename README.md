# FinServ Digital: Security-Hardened Kubernetes Platform

[![Platform Engineering](https://img.shields.io/badge/Platform-Kubernetes%201.28-blue)](https://github.com/vineethreddy761-lab)
[![Compliance](https://img.shields.io/badge/Compliance-PCI--DSS%20Level%201%20%7C%20RBI-green)](https://github.com/vineethreddy761-lab)
[![Security](https://img.shields.io/badge/Security-Zero--Trust%20%7C%20Vault%20%7C%20Falco-purple)](https://github.com/vineethreddy761-lab)

Production-grade, security-hardened Kubernetes platform designed for **FinServ Digital**, an RBI-regulated fintech processing 180,000 daily transactions across 20 microservices for 2.4 million active users. This platform transitions the enterprise from an insecure, flat legacy VM architecture to an auditable, zero-trust cloud-native platform meeting strict PCI-DSS Level 1 mandates.

---

## 🏛️ Repository Directory Structure
```text
├── docs/                     # Architecture, security, compliance, and operations guides
├── namespaces/               # Environment and domain namespace definitions
├── rbac/                     # Least-privilege roles, clusterroles, and bindings
├── network-policies/         # Default-deny and explicit allow zero-trust network rules
├── pod-security/             # Pod Security Standards (PSS) labels and security contexts
├── resource-quotas/          # Namespace-scoped compute and object quotas
├── limit-ranges/             # Default container resource limits and constraints
├── vault/                    # HashiCorp Vault HCL policies and agent configurations
├── admission-control/        # OPA/Gatekeeper and Kyverno image validation policies
├── audit/                    # API server audit policies and custom Falco runtime rules
├── service-mesh/             # mTLS mesh configuration and traffic policies
├── monitoring/               # HPA autoscalers, dashboard specs, and sample workloads
├── helm/                     # Parameterized Helm charts and per-environment values files
├── Dockerfiles/              # Secure multi-stage build templates
├── scripts/                  # Validation and automation utilities
└── daily-logs/               # 15-day chronological project execution logs
