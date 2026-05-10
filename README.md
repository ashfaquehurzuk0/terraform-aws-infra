# Terraform AWS Infrastructure

Provisions a production-style AWS environment using Terraform 
Infrastructure as Code — repeatable, version-controlled, and 
reviewable.

## What It Creates

| Resource | Purpose |
|---|---|
| VPC | Isolated network environment |
| Public Subnet | Hosts internet-facing resources |
| Internet Gateway | Enables inbound/outbound internet access |
| Security Group | Controls HTTP (80) and SSH (22) traffic |
| EC2 Instance | t2.micro web server (free tier) |

## File Structure

| File | Purpose |
|---|---|
| `main.tf` | Provider config and Terraform settings |
| `vpc.tf` | VPC, subnet, internet gateway, route tables |
| `ec2.tf` | EC2 instance and AMI configuration |
| `security_group.tf` | Inbound/outbound firewall rules |
| `variables.tf` | Input variables (region, AMI, instance type) |
| `outputs.tf` | Prints EC2 public IP after apply |
| `.gitignore` | Excludes state files and sensitive data |

## How to Use

```bash
# 1. Install Terraform and configure AWS credentials
aws configure

# 2. Initialise — downloads AWS provider
terraform init

# 3. Preview what will be created
terraform plan

# 4. Create the infrastructure
terraform apply

# 5. Tear everything down when done
terraform destroy
```

## Why Terraform Instead of Manual AWS Console

| Manual (AWS Console) | Terraform (IaC) |
|---|---|
| Can't be version-controlled | Full Git history of every change |
| Hard to reproduce exactly | Identical environment every apply |
| No peer review possible | Code reviewed like any other code |
| Easy to misconfigure silently | Errors caught at plan stage |

## Key Learnings
- How Terraform state tracks what's deployed vs what's in code
- Why `.tfstate` must never be committed to a public repo
- How variables and outputs make infrastructure reusable
- How security groups control traffic at the resource level
- How `terraform plan` catches errors before anything is created

## Author
**Ashfaque Hurzuk** — Cloud & DevOps Engineer | Navi Mumbai
[LinkedIn](https://www.linkedin.com/in/ashfaque-hurzuk-a2b8a637a) | [GitHub](https://github.com/ashfaquehurzuk0)
