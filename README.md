# E-Commerce DevOps Platform

## Project Overview

This project demonstrates an end-to-end DevOps implementation for a multi-microservice e-commerce application deployed on AWS.

The platform includes infrastructure provisioning, containerization, Kubernetes orchestration, GitOps deployment strategy, and CI/CD automation.

---

## Architecture

The application follows a microservices-based architecture deployed on AWS EKS.

User → Route53 → Application Load Balancer → Ingress Controller → Kubernetes Services → Pods → Database

---

## Tech Stack

- AWS (VPC, EKS, IAM, EC2, Route53, S3, DynamoDB)
- Terraform (Infrastructure as Code)
- Docker (Containerization)
- Kubernetes (Orchestration)
- Argo CD (GitOps)
- GitHub Actions (CI)

---

## Infrastructure as Code

- Modular Terraform structure
- Remote backend using S3
- State locking with DynamoDB

---

## Kubernetes Deployment

- Deployment manifests
- Services (ClusterIP / LoadBalancer)
- Ingress configuration
- Persistent Volume & Persistent Volume Claim
- Resource requests and limits

---

## CI/CD Workflow

1. Developer pushes code to GitHub
2. GitHub Actions builds Docker image
3. Image pushed to Docker registry
4. Argo CD automatically syncs changes to Kubernetes cluster
5. Application updates automatically

---

## Key DevOps Highlights

- End-to-end automation
- GitOps workflow
- Infrastructure modularization
- Production-like architecture design
