# Terraform Infrastructure - 00211104424

This repository contains Terraform code to provision infrastructure on AWS, as part of the assignment to automate infrastructure and deployment using Terraform and GitHub Actions.

## 🚀 Objective
Provision an EC2 instance on AWS with a security group that allows access on a custom port (last 4 digits of roll number → **4424**).

---

## 🔧 Infrastructure Provisioned
- **EC2 Instance** (Ubuntu)
- **Security Group** allowing:
  - Inbound traffic on port **4424** (HTTP)
  - SSH access (port 22)

---

## 📁 Repository Structure

```bash
terraform-infra-00211104424/
├── main.tf           # EC2 instance and security group definition
├── variables.tf      # Input variables
├── outputs.tf        # Outputs like public IP
├── provider.tf       # AWS provider configuration
├── .github/workflows/
│   └── terraform.yml # GitHub Actions CI for terraform fmt
└── README.md
