# Terraform AWS Infrastructure

Provisions a complete AWS environment using Infrastructure as Code.

## What It Creates
- VPC with public subnet
- Internet Gateway
- Security Group (HTTP + SSH)
- EC2 instance (t2.micro, free tier)

## How to Use
1. Install Terraform and configure AWS credentials
2. `terraform init`
3. `terraform plan` — review what will be created
4. `terraform apply` — creates the infrastructure
5. `terraform destroy` — tears everything down

## Why Terraform vs Manual
Manual setup in AWS Console cannot be version-controlled, repeated, 
or reviewed. Terraform code can be committed, reviewed, and reused 
across environments.
