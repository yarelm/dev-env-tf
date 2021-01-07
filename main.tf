
provider "google" {
  project = "{{YOUR GCP PROJECT}}"
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = var.google_credentials
}

module "db" {
    source = "./modules/db"
}