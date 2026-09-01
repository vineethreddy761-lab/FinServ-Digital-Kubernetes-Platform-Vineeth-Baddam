# Day 4: RBAC Design and Least-Privilege Implementation

## Activities Completed
* Designed and documented the least-privilege role hierarchy for all six engineering and operational personas (`docs/security/rbac-matrix.md`)[cite: 1].
* Created namespace-scoped `Role` and `RoleBinding` manifests for development and operational teams enforcing granular resource permissions[cite: 1].
* Created cluster-wide `ClusterRole` and `ClusterRoleBinding` manifests for compliance audit visibility without modification privileges[cite: 1].
* Verified permission logic alignment with PCI-DSS Req. 7 and Req. 8[cite: 1].

## Key Learnings & Observations
* Enforcing least privilege via RBAC ensures that compromised service accounts or developer credentials possess zero horizontal movement capabilities across domain boundaries.

## Next Steps
* Proceed to Day 5: Network Policy Specification & Zero-Trust Architecture.
