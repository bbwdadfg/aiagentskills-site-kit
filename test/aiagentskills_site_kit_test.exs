defmodule AiAgentSkillsSiteKitTest do
  use ExUnit.Case

  test "builds AI Agent Skills URLs" do
    assert AiAgentSkillsSiteKit.home_url() == "https://aiagentskills.net"
    assert AiAgentSkillsSiteKit.skills_url() == "https://aiagentskills.net/skills/"
    assert AiAgentSkillsSiteKit.submit_url() == "https://aiagentskills.net/submit/"
    assert AiAgentSkillsSiteKit.blog_url() == "https://aiagentskills.net/blog/"
    assert AiAgentSkillsSiteKit.category_url("agent-workflows") == "https://aiagentskills.net/category/agent-workflows/"
    assert AiAgentSkillsSiteKit.skill_url("seo-article-writer") == "https://aiagentskills.net/skill/seo-article-writer/"
    assert AiAgentSkillsSiteKit.search_url("codex skills") == "https://aiagentskills.net/skills/?q=codex%20skills"
  end
end
