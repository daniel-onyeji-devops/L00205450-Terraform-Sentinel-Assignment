# Terraform and Sentinel Assignment

**Name:** Daniel Onyeji  
**Student ID:** L00205450  
**Course:** ATU DevOps

## 1. Introduction

This project shows how Terraform and HashiCorp Sentinel can help organisations keep their cloud infrastructure secure and protect their data.

I used Terraform to prepare AWS infrastructure and Sentinel to check security rules before changes are made.

I used GitHub to store my code and HCP Terraform to set up the security policies.

## 2. Digital Sovereignty

Digital sovereignty means having control over where data is stored and who can access it.

I chose the AWS Ireland region (`eu-west-1`) because the project focuses on keeping infrastructure in an approved location.

My Sentinel policy checks that the AWS provider uses this region.

However, choosing Ireland does not guarantee that all data stays there. Backups, data replication and remote administrator access must also be considered. The laws of other countries may affect who can access data.

## 3. Supply-Chain Security

Terraform uses providers and modules to build infrastructure. Using untrusted sources can create security risks.

For this project, I:

- Allowed the official HashiCorp AWS provider.
- Pinned the AWS provider to version `5.100.0`.
- Approved the VPC module source `terraform-aws-modules/vpc/aws` and version `5.0.0` in the Sentinel policy.
- Used `.terraform.lock.hcl` to record provider checksums.

These checks help prevent the use of unexpected dependencies. However, Sentinel cannot guarantee that a provider or module contains no security vulnerabilities. Extra checks, such as vulnerability scanning and code reviews, are still needed.

## 4. Security Policies

I created six Sentinel policies:

| Policy | Purpose |
|---|---|
| Encryption | Makes sure EBS storage is encrypted |
| Sovereignty | Checks that AWS uses the Ireland region |
| Supply Chain | Checks approved providers, modules and versions |
| EC2 Security | Allows only approved EC2 instance types |
| IMDSv2 | Requires secure EC2 metadata access |
| Network Security | Blocks unrestricted public SSH and RDP access in the tested rule type |

## 5. Testing

I used Sentinel mock data to test both secure and insecure configurations.

For example, I tested encrypted and unencrypted storage, approved and unapproved AWS regions, incorrect provider and module versions, and public SSH access.

The automated tests passed, meaning the policies gave the expected results for the test cases.

I also ran `terraform init`, `terraform validate` and `terraform plan` successfully.

The Terraform plan showed:

`Plan: 1 to add, 0 to change, 0 to destroy.`

I saved the plan as `tfplan` and a readable copy in `documentation/evidence/`. I also saved the Sentinel test results there.

No AWS resources were deployed.

## 6. HCP Terraform

I connected my GitHub repository to HCP Terraform and created a workspace for the assignment.

I added five Sentinel policies to a policy set. The Network Security policy was tested locally and remains in GitHub.

Encryption uses hard mandatory enforcement. The other four HCP policies use advisory enforcement because of Free plan limits.

The HCP policy set is configured, but I have not yet completed a live HCP policy evaluation.

## 7. Limitations and Improvements

I found Policy-as-Code useful because it can automatically check infrastructure before deployment.

However, it has limitations. It cannot guarantee complete data residency, detect every supply-chain threat or identify every security issue after deployment.

Policies also need regular updates as cloud services and security requirements change.

In the future, I would improve the rules for backups, data replication and administrative access. I would also add automated security scanning and more checks through GitHub.

## 8. Use of AI

I used **OpenAI ChatGPT (GPT-6)** to help explain Terraform concepts, understand Sentinel code, troubleshoot errors and prepare documentation.

Example prompts included "Explain this step in simple terms", "Why is my Sentinel policy failing?" and "Make the README shorter and easier to understand".

I ran the commands, configured the tools, reviewed the results and tested the policies myself.

## 9. GitHub Repository

https://github.com/daniel-onyeji-devops/L00205450-Terraform-Sentinel-Assignment