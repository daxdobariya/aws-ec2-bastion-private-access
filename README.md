# 🏗️ aws-ec2-bastion-private-access

## 🚀 Overview

This project demonstrates how to deploy a **secure AWS infrastructure** using **Terraform**.  
It provisions:

- A **VPC** with public and private subnets  
- A **Bastion Host (Jump Box)** in the **public subnet** with an **Elastic IP**  
- A **Private EC2 Instance** accessible **only through the Bastion Host**  
- Proper **Security Groups**, **Route Tables**, and **Key Pairs**

This setup is ideal for learning or building a secure base infrastructure for real-world AWS deployments.

---

## 🧩 Architecture
               ┌──────────────────────────-────┐
               │          Internet             │
               └──────────────┬────────────-───┘
                              │
                      Elastic IP (EIP)
                              │
                ┌─────────────▼───────────────┐
                │     Bastion Host (EC2)      │
                │  Public Subnet (10.0.1.0/24)│
                └─────────────┬───────────────┘
                              │ SSH (Port 22)
                              │
                ┌─────────────▼─────────────────┐
                │  Private EC2 Instance         │
                │  Private Subnet (10.0.2.0/24) │
                └───────────────────────────────┘


