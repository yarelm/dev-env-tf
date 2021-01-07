output "delivery_topic_id" {
  value = google_pubsub_topic.delivery_event.id
}

output "payment_topic_id" {
  value = google_pubsub_topic.payment_event.id
}