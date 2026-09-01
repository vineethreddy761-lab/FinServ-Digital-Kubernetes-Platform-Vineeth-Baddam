# FinServ Digital: Cluster Architecture & Topology Design

## 1. Environment-Separated Cluster Topology
To satisfy strict RBI and PCI-DSS Level 1 compliance mandates[cite: 1], FinServ Digital implements hard infrastructure isolation across three distinct environments:
* **Development Cluster (`dev`):** Used for rapid feature iteration, initial testing, and developer experimentation. Implements Baseline PSS and relaxed resource quotas.
* **Staging Cluster (`staging`):** Mirrors production topology for end-to-end integration testing, performance benchmarking, and security scanning validation.
* **Production Cluster (`prod`):** Highly secured, multi-AZ isolated cluster running 20 core microservices processing live transactions. Enforces strict Restricted PSS and default-deny zero-trust network policies.

---

## 2. Control Plane High Availability (HA)
* **API Server & Etcd:** Production control planes deploy a minimum of 3 control plane nodes distributed across separate Availability Zones (AZs).
* **Etcd Quorum:** Utilizes the Raft consensus algorithm requiring $(n/2) + 1$ quorum (tolerating 1 node failure in a 3-member setup or 2 failures in a 5-member setup).
* **Encrypted Datastore:** etcd volumes are encrypted at rest using cloud-provider KMS integration, ensuring etcd snapshot confidentiality.

---

## 3. Node Pool Strategy
* **System Node Pool:** Dedicated nodes running cluster-level components (ingress controllers, monitoring agents, security tools, Vault agents). Tainted to prevent standard application workloads from scheduling here.
* **Application Node Pool:** General-purpose compute nodes running microservices across the 4 core domains (Payments, Risk/Compliance, Customer, Platform).
* **Hardened Operating Systems:** Worker nodes run immutable, minimal OS images (e.g., Bottlerocket or Talos Linux) with disabled SSH and read-only root filesystems.
