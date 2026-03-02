# E-Commerce DevOps Platform

## 📌 Project Overview

This project demonstrates a production-style end-to-end DevOps implementation for a microservices-based e-commerce application deployed on AWS.

The platform simulates a real-world cloud-native system using Infrastructure as Code, containerization, Kubernetes orchestration, and GitOps-driven CI/CD automation.

The goal of this project is to showcase practical DevOps skills including infrastructure provisioning, service orchestration, automated deployments, and scalable architecture design.

---

## 🏗 Architecture Overview

The application follows a microservices architecture deployed on AWS EKS.

### Traffic Flow

User  
→ Route53  
→ Application Load Balancer  
→ NGINX Ingress Controller  
→ Frontend Service  
→ Product Service & Payment Service  
→ Internal Communication via ClusterIP  

### Key Design Decisions

- Only the frontend service is exposed externally via Ingress
- Internal microservices use ClusterIP for secure communication
- Horizontal Pod Autoscaler (HPA) enables automatic scaling
- Infrastructure is provisioned using Terraform
- Continuous Delivery follows GitOps principles with Argo CD

---

## 🛠 Tech Stack

### Cloud Platform
- AWS (VPC, EKS, IAM, Route53, S3, DynamoDB)

### Infrastructure as Code
- Terraform
- Remote state stored in S3
- State locking using DynamoDB

### Containerization
- Docker
- Docker Compose (for local development)

### Orchestration
- Kubernetes
- NGINX Ingress Controller
- Horizontal Pod Autoscaler (HPA)

### CI/CD
- GitHub Actions (Continuous Integration)
- Argo CD (GitOps Continuous Delivery)

---

## 🚀 Infrastructure Implementation (Terraform)

The infrastructure layer includes:

- Custom VPC
- Public Subnet
- Modular Terraform configuration
- Remote backend configuration
- Output variables for resource referencing

The Terraform backend ensures safe state management using S3 and DynamoDB locking.

---

## ☸ Kubernetes Implementation

Each microservice includes:

- Deployment manifest
- ClusterIP Service
- Resource requests & limits
- Liveness and readiness probes
- Horizontal Pod Autoscaler configuration

Ingress is configured to route external traffic only to the frontend service.

Internal services communicate using Kubernetes DNS-based service discovery.

---

## 🔁 CI/CD Workflow

1. Developer pushes code to GitHub
2. GitHub Actions pipeline:
   - Builds Docker image
   - Pushes image to Docker Hub
   - Updates Kubernetes deployment manifest
3. Argo CD detects manifest changes
4. Kubernetes cluster synchronizes automatically
5. Rolling update deploys the new application version

This approach ensures automated, traceable, and production-ready deployments.

---

## 📈 Scalability & Reliability

- CPU-based auto scaling using HPA
- Defined resource requests and limits
- Rolling update strategy for zero-downtime deployments
- Separation between local (Docker Compose) and production (Kubernetes) environments

---

## 🎯 Key DevOps Concepts Demonstrated

- Infrastructure as Code (IaC)
- GitOps workflow
- Kubernetes service discovery
- Container lifecycle management
- CI/CD automation
- Production-style cloud architecture design

---

## 📂 Project Structure
