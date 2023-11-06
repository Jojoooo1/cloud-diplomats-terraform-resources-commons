output "client_id_iap_internal_client_dev" {
  value       = google_iap_client.iap_internal_client_dev.client_id
  description = "Unique identifier of the dev OAuth client."
}

output "secret_iap_internal_client_dev" {
  value       = google_iap_client.iap_internal_client_dev.secret
  description = "Client secret of the dev OAuth client."
  sensitive   = true
}

output "client_id_iap_internal_client_prod" {
  value       = google_iap_client.iap_internal_client_prod.client_id
  description = "Unique identifier of the prod OAuth client."
}

output "secret_iap_internal_client_prod" {
  value       = google_iap_client.iap_internal_client_prod.secret
  description = "Client secret of the prod OAuth client."
  sensitive   = true
}
