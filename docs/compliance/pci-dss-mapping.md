# FinServ Digital: PCI-DSS v4.0 Control Mapping to Kubernetes Platform

## Executive Compliance Statement
In response to the RBI and CISO mandate accelerating our audit timeline (Scenario B3.1), this document maps core PCI-DSS v4.0 requirements directly to platform-level Kubernetes controls implemented across FinServ Digital's architecture.

| PCI-DSS Req. | Requirement Summary | Kubernetes Platform Control Implementation |
| :--- | :--- | :--- |
| **Req. 1** | Install and maintain network security controls | Default-deny network policies, CNI enforcement (Calico/Cilium), internal microservice segmentation across 4 domain namespaces[cite: 1]. |
| **Req. 2** | Apply secure configurations to all system components | CIS Kubernetes Benchmarks, Pod Security Standards (Restricted profile), OPA/Gatekeeper admission control[cite: 1]. |
| **Req. 3** | Protect stored account data | HashiCorp Vault Transit Engine for field-level encryption, KMS-encrypted etcd datastore[cite: 1]. |
| **Req. 6** | Develop and maintain secure systems and software | Trivy image scanning in CI/CD pipelines, automated SBOM generation, admission blocking for vulnerable images[cite: 1]. |
| **Req. 7** | Restrict access to system components by business need | Least-privilege RBAC roles per engineering persona, namespace domain separation, Vault path policies[cite: 1]. |
| **Req. 8** | Identify users and authenticate access | OIDC integration for human users, short-lived ServiceAccount tokens, MFA for platform admins[cite: 1]. |
| **Req. 10** | Log and monitor all access to system components | API server audit logging (Metadata/Request levels), Falco runtime threat detection, centralised Loki log retention[cite: 1]. |
| **Req. 11** | Test security of systems and networks regularly | Automated `kube-bench` CIS scanning, vulnerability reporting, chaos engineering simulations[cite: 1]. |
