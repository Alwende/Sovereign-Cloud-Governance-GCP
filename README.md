# Enterprise Zero-Trust Governance Shield (GCP)
**Lead Enterprise Solutions Architect:** Dan Alwende, PMP

---

## 🏗️ Executive Summary
This project demonstrates a "Sovereign Architect" approach to cloud security, moving beyond standard vendor defaults to a custom-hardened governance model. By implementing **Zero-Trust Architecture** on Google Cloud Platform, we have established an identity-centric perimeter that secures high-integrity workloads against unauthorized data exfiltration and lateral movement.

## 🛡️ Technical Architecture (Automated Logic Map)
The following blueprint is auto-generated directly from the **Terraform Factory** state, ensuring 100% parity between the codified intent and the live environment.

![Enterprise Architecture](./screenshots/enterprise_architecture.png)

## 💎 Key Deliverables & Security Posture
- **Identity-as-the-Perimeter:** Management access is restricted to Google's Identity-Aware Proxy (IAP), eliminating the need for public IP addresses or Bastion hosts.
- **Data Exfiltration Shield:** A "Default-Deny" egress posture ensures that no data can leave the network unless it is routed through a specific, restricted Google API range (199.36.153.4/30).
- **Private Google Access:** Enabled VPC-to-API communication, ensuring services stay within the Google backbone.
- **Least-Privilege Governance:** Automated Service Account provisioning with the **roles/iam.securityReviewer** binding for restricted auditing.

## 🚀 Infrastructure-as-Code Lifecycle
The entire environment is 100% declarative and was provisioned using the following standard:

1. **Initialization:** `terraform init` (Provider Sync)
2. **Validation:** `terraform plan` (Pre-flight Audit)
3. **Execution:** `terraform apply` (Immutable Provisioning)

---

## 📁 Project Portfolio Artifacts
- **[Project Charter](./Project_Charter_GCP_ZeroTrust.md):** Formal authorization and pre-execution scope.
- **[Closure Report](./Project_Closure_Report.md):** Executive value realization and KPI audit.
- **[Technical Source Graph](./screenshots/architecture_graph.dot):** The raw DOT logic used to generate the architecture map.

---
*Developed for the Wakwetu Executive Project Portfolio.*
