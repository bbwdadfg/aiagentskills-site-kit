variable "zone_id" {
  type        = string
  description = "Cloudflare zone ID that should receive the optional PWA CNAME."
  default     = ""
}

variable "hostname" {
  type        = string
  description = "DNS record name for the optional AI Agent Skills PWA entry point."
  default     = "ai-agent-skills"
}

variable "cname_target" {
  type        = string
  description = "CNAME target for the optional PWA entry point."
  default     = "aiagentskills.net"
}

variable "create_record" {
  type        = bool
  description = "Create the Cloudflare DNS record when true."
  default     = false
}

