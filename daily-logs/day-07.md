# Day 7: Container Image Security Pipeline & Admission Control

## Activities Completed
* Authored the container image security and supply chain pipeline document (`docs/security/image-security-pipeline.md`).
* Created a secure, multi-stage `Dockerfile` template utilizing a non-root distroless runtime base (`Dockerfiles/sample-service.Dockerfile`).
* Engineered OPA/Gatekeeper constraint templates and policies enforcing trusted registries and cryptographic image signatures (`admission-control/gatekeeper-policies.yaml`).

## Key Learnings & Observations
* Combining multi-stage builds with pre-deployment admission control prevents vulnerabilities and unsigned artifacts from entering production environments.

## Next Steps
* Proceed to Day 8: Pod Security Standards Implementation.
