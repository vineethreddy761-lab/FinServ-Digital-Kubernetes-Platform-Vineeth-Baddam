# FinServ Digital: Security Incident Response Playbook

## 1. Overview (Simulation B3.3)
Playbook covering automated pod isolation, forensics capture, and threat eradication.

## 2. Containment Procedure
- Isolate namespace via network policy label.
- Preserve forensic logs using kubectl cp.
- Terminate compromised deployments.
