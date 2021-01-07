terraform {
  required_providers {
    aws = {
      source  = "hashicorp/google"
      version = ">= 3.51.0"
    }
  }
}

resource "google_sql_database_instance" "master" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}
