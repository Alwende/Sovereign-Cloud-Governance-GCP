# Enterprise Zero-Trust Governance Shield (GCP)

An executive-level architectural implementation of **Zero-Trust Security** on Google Cloud Platform, codified via **Terraform**.

## 🏗️ Architectural Overview
This project demonstrates a "Sovereign Architect" approach to cloud security, moving beyond vendor-specific defaults to a custom-hardened governance model.

### Key Features:
- **Global VPC Architecture:** Custom-mode networking with Private Google Access.
- **Identity-Aware Proxy (IAP):** Secure management without public IP addresses.
- **Egress Guardrails:** A "Default-Deny" outbound policy with surgical access to Google APIs.
- **Least Privilege IAM:** Automated Service Account provisioning with audited permissions.

## 🛠️ Tech Stack
- **Cloud:** Google Cloud Platform (GCP)
- **IaC:** Terraform
- **Networking:** Global VPC, IAP, Cloud DNS
- **Security:** IAM Conditions, Firewall Guardrails

## 📁 Project Structure
- `main.tf`: Core infrastructure logic (VPC, IAM, Firewalls).
- `providers.tf`: Multi-cloud factory configuration.
- `Project_Charter_GCP_ZeroTrust.md`: Formal project authorization.
- `Project_Closure_Report.md`: Executive value realization.

## 🚀 Deployment
```bash
terraform init
terraform apply
```

---
**Lead Architect:** Dan Alwende, PMP
