# AI Agent Skills Terraform Module

Terraform helper module for publishing stable AI Agent Skills web entry points.

- Website: <https://aiagentskills.net>
- Skills directory: <https://aiagentskills.net/skills/>
- Source: <https://github.com/bbwdadfg/aiagentskills-site-kit>

The module can optionally create a Cloudflare DNS CNAME for an AI Agent Skills
PWA entry point and always exports the canonical URLs used by the public site.

## Usage

```hcl
module "ai_agent_skills" {
  source = "github.com/bbwdadfg/terraform-cloudflare-ai-agent-skills?ref=v0.1.0"

  zone_id        = var.cloudflare_zone_id
  hostname       = "skills.example.com"
  cname_target   = "aiagentskills.net"
  create_record  = true
}
```

