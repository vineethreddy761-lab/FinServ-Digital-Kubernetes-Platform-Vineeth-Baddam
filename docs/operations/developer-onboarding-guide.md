# FinServ Digital: Developer Onboarding Guide

## 1. Welcome
Welcome to FinServ Digital's cloud-native engineering team. Step-by-step instructions for deploying microservices and debugging applications.

## 2. Deploying a Service
Use standardized Helm charts:
```bash
helm install my-service ./charts/finserv-microservice --namespace production-payments
```
