
locals {
  region = "us-central1"
  zone   = "us-central1-c"
  tenants = ["moshe", "simon"]
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
  name = "personal"
  tenants = local.tenants
}

module "pubsub" {
  source = "../../modules/pubsub"
  for_each = toset(local.tenants)
  env = each.key
}
