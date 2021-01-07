terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.51.0"
    }
  }
}

resource "google_sql_database_instance" "master" {
  name             = var.name
  database_version = "POSTGRES_11"
  region           = var.region
  deletion_protection = false

  settings {
    tier = var.tier
  }
}

resource "google_sql_database" "database" {
  for_each = toset(var.tenants)
  name     = "${each.key}"
  instance = google_sql_database_instance.master.name
}
