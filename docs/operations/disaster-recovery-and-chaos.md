# FinServ Digital: Disaster Recovery & Chaos Engineering Verification

## 1. Disaster Recovery (DR) Strategy & RPO/RTO
* **Recovery Point Objective (RPO):** < 15 minutes (achieved via continuous automated etcd snapshots and database replication).
* **Recovery Time Objective (RTO):** < 30 minutes for full multi-AZ cluster restoration using Infrastructure as Code (Terraform) and GitOps (ArgoCD/Flux).

## 2. Chaos Engineering Verification (LitmusChaos / Chaos Mesh)
To validate platform resilience against unexpected failures, regular chaos experiments are executed in staging and non-production environments:
1. **Node Failure Simulation:** Terminate a random worker node hosting core payment microservices to verify HPA multi-replica failover and zero transaction loss.
2. **Network Latency Injection:** Inject 200ms of artificial latency between the API Gateway and the Fraud Detection service to test circuit breaking and timeout handling.
3. **Etcd Quorum Loss Test:** Simulate a 1-node control plane failure in a 3-node HA cluster to ensure raft consensus remains active.
