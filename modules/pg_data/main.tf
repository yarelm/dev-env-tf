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
  instance = var.instance_name

  labels = {
    env = var.env
  }
}

resource "google_sql_database" "delivery" {
  name     = "${var.env}-delivery"
  instance = var.instance_name

  labels = {
    env = var.env
  }
}
