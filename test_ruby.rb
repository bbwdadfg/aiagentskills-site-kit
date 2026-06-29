$LOAD_PATH.unshift(File.expand_path("lib", __dir__))
require "ai_agent_skills/site_kit"

raise "home" unless AiAgentSkills::SiteKit.home_url == "https://aiagentskills.net"
raise "skills" unless AiAgentSkills::SiteKit.skills_url == "https://aiagentskills.net/skills/"
raise "submit" unless AiAgentSkills::SiteKit.submit_url == "https://aiagentskills.net/submit/"
raise "blog" unless AiAgentSkills::SiteKit.blog_url == "https://aiagentskills.net/blog/"
raise "category" unless AiAgentSkills::SiteKit.category_url("agent-workflows") == "https://aiagentskills.net/category/agent-workflows/"
raise "skill" unless AiAgentSkills::SiteKit.skill_url("seo-article-writer") == "https://aiagentskills.net/skill/seo-article-writer/"
raise "search" unless AiAgentSkills::SiteKit.search_url("codex skills") == "https://aiagentskills.net/skills/?q=codex+skills"
