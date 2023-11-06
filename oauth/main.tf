locals {
  common_labels = {
    owned-by   = "platform"
    managed-by = "terraform"
    env        = "prod"
  }
}

/******************************************
  Identity aware proxy configuration: https://cloud.google.com/iap/docs/programmatic-oauth-clients
 *****************************************/
resource "google_iap_brand" "project_brand" {
  project = var.project_id

  application_title = "Cloud diplomats internal"
  support_email     = "jonathan@cloud-diplomats.com"
}

# Note: You can also create the oauth2 client manually with the following redirect uri: https://iap.googleapis.com/v1/oauth/clientIds/CLIENT_ID:handleRedirect
resource "google_iap_client" "iap_internal_client_dev" {
  brand        = google_iap_brand.project_brand.id
  display_name = "iap-internal-oauth-client-dev"
}

resource "google_iap_client" "iap_internal_client_prod" {
  brand        = google_iap_brand.project_brand.id
  display_name = "iap-internal-oauth-client-prod"
}
