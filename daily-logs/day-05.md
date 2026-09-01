# Day 5: Network Policy Specification & Zero-Trust Architecture

## Activities Completed
* Authored the service dependency mapping document covering all 20 microservices across FinServ Digital's four domains (`docs/security/network-flow-diagram.md`).
* Deployed cluster-wide default-deny Ingress and Egress NetworkPolicies across all production namespaces (`network-policies/default-deny/all-namespaces-default-deny.yaml`)[cite: 1].
* Engineered explicit allow-listing network policies for critical payment flows (`payment-gateway-allow.yaml`) ensuring strict Layer 3/4 segmentation.
* Configured mandatory DNS and approved external egress routing rules.

## Key Learnings & Observations
* Zero-trust network policies eliminate lateral movement risks, ensuring that even if a container is compromised, its communication reach is mathematically restricted to approved dependencies.

## Next Steps
* Proceed to Phase 2 (Day 6): Secrets Management Architecture with HashiCorp Vault.
