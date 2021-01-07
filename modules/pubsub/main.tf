terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.51.0"
    }
  }
}

resource "google_pubsub_topic" "payment_event" {
  name = "${var.env}-payment_event"

  labels = {
    env = var.env
  }
}

resource "google_pubsub_topic" "delivery_event" {
  name = "${var.env}-delivery_event"

  labels = {
    env = var.env
  }
}