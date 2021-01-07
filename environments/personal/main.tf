
locals {
  region = "us-central1"
  zone   = "us-central1-c"
}

provider "google" {
  project     = var.gcp_project
  region      = local.region
  zone        = local.zone
  credentials = var.google_credentials
}

module "db" {
  source = "../../modules/db"
  region = local.region
  name = "master-instance"

}
