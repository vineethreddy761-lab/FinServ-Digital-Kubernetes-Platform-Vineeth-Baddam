# FinServ Digital: Container Image Security & Supply Chain Pipeline

## 1. Secure Build & Supply Chain Stages
To comply with PCI-DSS Req. 6 ("Develop and maintain secure systems and software"), container images traverse a rigorous 6-stage security pipeline:
1. **Multi-Stage Builds:** Separate build dependencies from runtime environments using minimal base images (distroless/alpine) to eliminate package managers and shells.
2. **Vulnerability Scanning:** Automated Trivy/Grype scans inspect image layers during CI/CD. Pipelines fail immediately if Critical or High CVEs are detected.
3. **Cryptographic Signing:** Approved images are signed using Cosign with internal organizational private keys.
4. **Registry Storage:** Signed images are pushed to the private enterprise registry (`registry.finserv.internal:5000`).
5. **Admission Control Validation:** OPA/Gatekeeper or Kyverno validates image signatures and CVE reports at the Kubernetes API admission webhook before deployment.
