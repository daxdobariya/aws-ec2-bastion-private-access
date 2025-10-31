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


---

## 🛠️ Features

- ✅ Infrastructure as Code (IaC) with **Terraform**
- ✅ **VPC**, **subnets**, **IGW**, and **route tables** creation
- ✅ **Bastion Host** in public subnet for secure access
- ✅ **Private EC2 instance** with SSH access only via Bastion
- ✅ **Elastic IP** attached to Bastion Host
- ✅ Parameterized using **variables**

---

## 📂 Project Structure


ec2/\
│\
├── main.tf # Main Terraform configuration\
├── var.tf # Input variables\
├── output.tf # Output values\
├── .gitignore # Ignore sensitive files\
├── mykey / mykey.pub # SSH keys (excluded from Git)\
├── terraform.tfstate* # Terraform state files (excluded)\
└── README.md # Project documentation\


---

## ⚙️ Prerequisites

Before running this project, make sure you have:

- ✅ AWS account and credentials configured (`aws configure`)
- ✅ Terraform installed (v1.5+ recommended)
- ✅ Key pair for EC2 access
- ✅ Git installed (if pushing to GitHub)

---

## 🚀 How to Deploy

```bash
# 1️⃣ Initialize Terraform
terraform init

# 2️⃣ Validate configuration
terraform validate

# 3️⃣ See execution plan
terraform plan

# 4️⃣ Apply configuration
terraform apply -auto-approve

```

Once complete, Terraform will output:
- Bastion Host Public IP (Elastic IP)
- Private EC2 Private IP

## 🔐 Accessing the Private EC2

1. **SSH into the Bastion Host** using Elastic IP:
   ```bash
   ssh -i mykey.pem ubuntu@<bastion-elastic-ip>

2. **From the Bastion Host, SSH into the private instance:
   ```bash
   ssh -i mykey.pem ubuntu@<private-instance-ip>

## 🧹 Destroy Infrastructure

To remove all resources:

```bash
terraform destroy -auto-approve

## 🧠 Learning Concepts Covered

- Terraform AWS provider basics  
- VPC, Subnet, Internet/NAT Gateways  
- Bastion Host security pattern  
- Private vs Public subnet communication  
- Terraform outputs and variables  
```

---

## 💻 Author

**👤 [Dax Dobariya](https://github.com/daxdobariya)**  
Terraform | AWS | DevOps Enthusiast ☁️  

