![Terraform](https://img.shields.io/badge/Terraform-AWS-blueviolet) 
![IaC](https://img.shields.io/badge/IaC-Infrastructure%20as%20Code-success)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![EC2](https://img.shields.io/badge/EC2-Instance-blue)
![S3](https://img.shields.io/badge/S3-Bucket-yellow)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-red)


# Deploying a Jenkins Server on AWS Using Terraform

## Overview
This project provisions a Jenkins server on AWS using Terraform.  
It automates the deployment of an EC2 instance, security group, and S3 bucket following Infrastructure as Code (IaC) principles. Jenkins will serve as the foundation for future CI/CD pipelines.

---

## Architecture
- **EC2 Instance** (Amazon Linux 2)
  - Jenkins installed via user data script
  - Security group allowing:
    - Port 22 (SSH) from my IP
    - Port 8080 (Jenkins dashboard) from my IP
- **S3 Bucket**
  - Stores Jenkins artifacts securely
  - Private access only

---

## Technologies Used
- AWS EC2
- AWS S3
- Terraform
- Jenkins
- Amazon Linux 2
- Git / GitHub

---

## Terraform Structure
- `main.tf` — Defines the EC2 instance, security group, and S3 bucket.
- `variables.tf` — Declares variables for reuse and flexibility.
- `provider.tf` — Configures the AWS provider.
- `outputs.tf` — Outputs public IP and S3 bucket name after deployment.

---

## Key Challenges and Solutions
> **Important Note:**  
> While setting up the server, Jenkins initially failed to start due to an outdated Java version installed by default on Amazon Linux 2.  
> 
> After SSH'ing into the instance and investigating, I manually installed **Amazon Corretto 17** (Java 17 LTS) before installing Jenkins.  
> 
> ➔ Always ensure you update Java before attempting Jenkins installation in automated deployments.

---

## How to Deploy This Project
1. Clone the repository:
    ```bash
    git clone https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME.git
    cd YOUR_REPO_NAME
    ```
2. Initialize Terraform:
    ```bash
    terraform init
    ```
3. Apply the infrastructure:
    ```bash
    terraform apply
    ```
4. Access Jenkins by visiting:
    ```
    http://<EC2_PUBLIC_IP>:8080
    ```

---

## Screenshots
- Jenkins login screen after successful setup ✅

---

## Final Thoughts
This project helped me practice deploying infrastructure with Terraform and troubleshoot server issues directly through SSH access.  
It reinforced the importance of verifying server requirements during automated deployments and improved my confidence managing AWS resources via Infrastructure as Code (IaC).

---
