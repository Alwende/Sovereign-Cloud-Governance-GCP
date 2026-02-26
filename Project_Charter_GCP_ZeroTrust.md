# PROJECT CHARTER: WAK-GCP-SEC-2026

## 1. PROJECT IDENTIFICATION
* **Project Name:** Enterprise Zero-Trust Governance & Security Shield
* **Project Manager:** Dan Alwende, PMP
* **Sponsor:** Wakwetu Executive Steering Committee
* **Cloud Provider:** Google Cloud Platform (GCP)
* **Date of Authorization:** February 26, 2026

## 2. PROJECT PURPOSE & JUSTIFICATION
The objective of this project is to architect a "Sovereign" cloud environment that moves beyond default provider security. As enterprise data workloads scale, traditional perimeter-based security is insufficient. This project is authorized to implement **Zero-Trust Architecture** (Identity-as-the-Perimeter) to ensure maximum integrity, auditability, and resilience against unauthorized data exfiltration.

## 3. HIGH-LEVEL PROJECT OBJECTIVES
* **Automated Governance:** Establish a 100% declarative Landing Zone using the Terraform IaC Factory.
* **Identity Hardening:** Implement a "Least Privilege" model for all system-to-system communications.
* **Network Isolation:** Define a Global VPC structure that eliminates public entry points and restricts outbound data paths.
* **Regulatory Alignment:** Ensure the environment is "Audit-Ready" for financial-grade compliance standards.

## 4. PROJECT SCOPE & BOUNDARIES
### **In-Scope:**
* Codification of Global VPC and Regional Subnets.
* Implementation of Identity-Aware Proxy (IAP) for secure management.
* Creation of custom IAM Service Accounts and Role Bindings.
* Configuration of Default-Deny Egress Firewall Guardrails.

### **Out-of-Scope:**
* Migration of legacy on-premise databases.
* End-user application deployment (to be handled in Phase 2).

## 5. KEY STAKEHOLDERS
* **Chief Information Security Officer (CISO):** Approval of Zero-Trust protocols.
* **Head of Infrastructure:** Integration with the Terraform IaC Factory.
* **Compliance/Audit Team:** Verification of the "Audit-Ready" state.

## 6. PROJECT AUTHORIZATION
This charter grants **Dan Alwende, PMP**, the authority to provision GCP resources and manage the architectural lifecycle of the Zero-Trust Shield.

**Authorized by:** Wakwetu PMO
**Status:** [ACTIVE]
