output "domain" {
  description = "domain"
  value       = module.dns_public_zone.domain
}

output "type" {
  description = "domaine type"
  value       = module.dns_public_zone.type
}

output "name_servers" {
  description = "Zone name servers"
  value       = module.dns_public_zone.name_servers
}
