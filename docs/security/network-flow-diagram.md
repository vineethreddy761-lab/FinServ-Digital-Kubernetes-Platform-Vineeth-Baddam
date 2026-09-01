# FinServ Digital: Zero-Trust Network Flow & Service Dependency Architecture

## 1. Service Dependency Map (20 Microservices across 4 Domains)
To comply with PCI-DSS Req. 1 ("Install and maintain network security controls")[cite: 1], all inter-service communication paths are mapped, restricted, and authenticated.

* **Payments Domain (`production-payments`):**
  * *Payment Gateway* $\rightarrow$ Transaction Processor, Fraud Detection Engine
  * *Transaction Processor* $\rightarrow$ Settlement Engine, Refund Service, Recurring Payments Scheduler
* **Risk & Compliance Domain (`production-risk`):**
  * *Fraud Detection Engine* $\rightarrow$ Risk Scoring Engine, AML Screening Service
  * *Compliance Reporting Service* $\rightarrow$ Audit Log Aggregator
* **Customer Domain (`production-customer`):**
  * *User Management Service* $\rightarrow$ KYC Verification Service, Preference Manager
  * *Notification Service* $\rightarrow$ External SMS/Email Gateways (via controlled egress)
* **Platform Domain (`production-platform`):**
  * *API Gateway* $\rightarrow$ All Domain Gateways
  * *Service Registry & Configuration Service* $\rightarrow$ Internal Microservices

---

## 2. Default-Deny & Egress Principles
* **Default-Deny Ingress & Egress:** Every namespace is instantiated with a default-deny policy blocking all incoming and outgoing traffic[cite: 1].
* **DNS Resolution:** Egress to `kube-dns` on port 53 (UDP/TCP) is explicitly permitted for all pods in the cluster[cite: 1].
* **External Egress Filtering:** External traffic is restricted to specific approved CIDR blocks and ports for payment processors and banking APIs.
