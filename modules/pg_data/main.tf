terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.51.0"
    }
  }
}

resource "google_sql_database" "payment" {
  name     = "${var.env}-payment"
  instance = google_sql_database_instance.master.name
}

resource "google_sql_database" "delivery" {
  name     = "${var.env}-delivery"
  instance = google_sql_database_instance.master.name
}
