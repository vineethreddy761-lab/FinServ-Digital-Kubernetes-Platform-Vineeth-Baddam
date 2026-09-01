# FinServ Digital: Service Mesh Evaluation & mTLS Architecture

## 1. Evaluation: Istio vs. Linkerd
To satisfy PCI-DSS Req. 1 and Req. 4 (encryption in transit across all internal communications), a service mesh is deployed.
* **Istio:** Feature-rich, highly robust traffic management (canary routing, circuit breaking, fault injection), advanced L7 telemetry. *Trade-off:* Higher memory and CPU footprint, steeper operational learning curve.
* **Linkerd:** Ultra-lightweight, written in Rust, fast startup, minimal resource overhead, CNCF graduated project. *Trade-off:* Fewer advanced traffic governance features than Istio.
* **Selection:** **Linkerd** is selected for FinServ Digital's microservices data plane to maximize resource efficiency and maintain operational simplicity, while leveraging automated transparent mTLS across all 20 services.

## 2. mTLS & Traffic Policies
* **Strict mTLS Mode:** Enforced across all domain namespaces (`production-payments`, `production-risk`, `production-customer`, `production-platform`), ensuring plaintext internal traffic is automatically dropped.
