output "homepage_url" {
  description = "Canonical AI Agent Skills homepage."
  value       = local.homepage
}

output "skills_url" {
  description = "Canonical AI Agent Skills directory URL."
  value       = local.skills_url
}

output "submit_url" {
  description = "Canonical AI Agent Skills submission URL."
  value       = local.submit_url
}

output "pwa_record_hostname" {
  description = "Optional Cloudflare DNS record hostname."
  value       = var.create_record ? cloudflare_dns_record.pwa_entrypoint[0].name : null
}

