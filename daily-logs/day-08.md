# Day 8: Pod Security Standards Implementation

## Activities Completed
* Configured Pod Security Standards (PSS) enforcement labels (`pod-security.kubernetes.io/enforce: restricted`) for all production namespaces[cite: 1].
* Developed reusable secure `SecurityContext` templates enforcing `runAsNonRoot`, `readOnlyRootFilesystem`, and dropped Linux capabilities (`drop: [ALL]`)[cite: 1].
* Authored a production-grade, compliant sample Deployment manifest for the Payment Gateway (`monitoring/sample-deployments/payment-gateway.yaml`) incorporating health probes and resource limits.

## Key Learnings & Observations
* Enforcing the PSS Restricted profile at the namespace admission layer guarantees that container breakout vectors and privilege escalations are blocked by default.

## Next Steps
* Proceed to Day 9: API Server Audit Logging and Runtime Security with Falco.
