# 1. The Zero-Trust Network (Global)
resource "google_compute_network" "zero_trust_vpc" {
  name                    = "wakwetu-zero-trust-vpc"
  auto_create_subnetworks = false # Standard for Enterprise Architecture
  routing_mode            = "GLOBAL"
}

# 2. Secure Subnet (Regional)
resource "google_compute_subnetwork" "secure_subnet" {
  name          = "wakwetu-secure-subnet-us-east1"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-east1"
  network       = google_compute_network.zero_trust_vpc.id
  
  # Enabling Private Google Access (Essential for Zero-Trust)
  private_ip_google_access = true
}

# 3. Identity-Aware Proxy (IAP) Firewall Rule
# Allows ingress only from Google's IAP netblock for secure management
resource "google_compute_firewall" "allow_iap_ingress" {
  name    = "allow-iap-ingress"
  network = google_compute_network.zero_trust_vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22", "3389"] # SSH and RDP
  }

  # This range is owned by Google for IAP
  source_ranges = ["35.235.240.0/20"]
}

# 4. Restricted Service Account for Auditing
resource "google_service_account" "auditor_sa" {
  account_id   = "wakwetu-security-auditor"
  display_name = "Wakwetu Security Auditor"
}

# 5. Assign Least Privilege Role (Security Reviewer)
# This allows viewing security configs but NO changes and NO data access.
resource "google_project_iam_member" "auditor_iam" {
  project = "apt-advantage-478607-b4"
  role    = "roles/iam.securityReviewer"
  member  = "serviceAccount:${google_service_account.auditor_sa.email}"
}

# 6. Zero-Trust Egress Policy: Deny All Public Internet
resource "google_compute_firewall" "deny_all_egress" {
  name      = "deny-all-egress"
  network   = google_compute_network.zero_trust_vpc.name
  direction = "EGRESS"
  priority  = 1000

  deny {
    protocol = "all"
  }

  destination_ranges = ["0.0.0.0/0"]
}

# 7. Allow Egress only to Google APIs (Restricted Range)
# Proves you can manage specific data exfiltration paths
resource "google_compute_firewall" "allow_google_apis_egress" {
  name      = "allow-google-apis-egress"
  network   = google_compute_network.zero_trust_vpc.name
  direction = "EGRESS"
  priority  = 900 # Higher priority than the 'Deny All'

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  destination_ranges = ["199.36.153.4/30"] # Restricted Google API Range
}
