terraform {
  required_version = ">= 1.6.0"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 4.0.0"
    }
  }
}

locals {
  homepage   = "https://aiagentskills.net"
  skills_url = "https://aiagentskills.net/skills/"
  submit_url = "https://aiagentskills.net/submit/"
}

resource "cloudflare_dns_record" "pwa_entrypoint" {
  count = var.create_record ? 1 : 0

  zone_id = var.zone_id
  name    = var.hostname
  type    = "CNAME"
  content = var.cname_target
  ttl     = 1
  proxied = true
  comment = "AI Agent Skills PWA entry point"
}

