terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.51.0"
    }
  }
}

resource "google_cloud_scheduler_job" "delivery" {
  name        = "${var.env}-delivery_job"
  description = "periodic delivery job"
  schedule    = "*/2 * * * *"

  pubsub_target {
    # topic.id is the topic's full resource name.
    topic_name = env.topic_id
    data       = base64encode("is your delivery ready?")
  }
}