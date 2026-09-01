# Day 6: Secrets Management Architecture with HashiCorp Vault

## Activities Completed
* Authored the comprehensive Vault architecture and integration document (`docs/security/vault-architecture.md`).
* Created least-privilege HashiCorp Vault HCL policy files for the Payments and Risk domains (`vault/vault-policies/`).
* Designed the Vault Agent Sidecar Injection configuration template ensuring in-memory secret mounting (`vault/vault-agent-config/`).
* Addressed developer onboarding feedback regarding secret injection workflows.

## Key Learnings & Observations
* Replacing native Kubernetes secrets with dynamic Vault injection prevents credential leaks via etcd snapshots or environment variable inspection.

## Next Steps
* Proceed to Day 7: Container Image Security Pipeline & Admission Control.
