module "ai_agent_skills" {
  source = "../../terraform"
}

output "ai_agent_skills_homepage" {
  value = module.ai_agent_skills.homepage_url
}

