locals {
  common_labels = {
    owned-by   = "platform"
    managed-by = "terraform"
    env        = "prod"
  }
}

/******************************************
  DNS Managed Public Zone configuration
 *****************************************/
module "dns_public_zone" {
  source  = "terraform-google-modules/cloud-dns/google"
  version = "5.1.1"

  project_id = var.project_id
  type       = "public"

  name        = var.dns_name
  domain      = var.dns_domain
  description = "DNS zone for ${var.dns_name} managed by Terraform"

  recordsets = []

  labels = local.common_labels
}
