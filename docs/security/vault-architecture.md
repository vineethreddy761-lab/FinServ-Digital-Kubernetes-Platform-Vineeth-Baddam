# FinServ Digital: HashiCorp Vault Secrets Management Architecture

## 1. Enterprise Secrets Design
To eliminate unencrypted base64-encoded Kubernetes secrets and cleartext environment variables, FinServ Digital integrates **HashiCorp Vault**. 
* **Authentication:** Pods authenticate to Vault via Kubernetes service accounts using Vault's JWT/Kubernetes auth method.
* **Dynamic Secrets:** Short-lived database credentials are generated on demand and automatically revoked upon TTL expiration, minimizing exposure windows.
* **Encryption as a Service:** The Vault Transit secrets engine provides transparent application-layer encryption for cardholder and transaction data.

## 2. Vault Agent Sidecar Injector Pattern
Vault Agent runs as a sidecar container alongside application pods. It handles authentication, token renewal, and template rendering, writing secrets directly to an in-memory `emptyDir` shared volume. Applications read secrets locally from disk, entirely removing Vault API client overhead from application code.
