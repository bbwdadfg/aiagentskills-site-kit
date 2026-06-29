package aiagentskills

import "testing"

func TestLinks(t *testing.T) {
	if HomeURL() != "https://aiagentskills.net" { t.Fatalf("home") }
	if SkillsURL() != "https://aiagentskills.net/skills/" { t.Fatalf("skills") }
	if SubmitURL() != "https://aiagentskills.net/submit/" { t.Fatalf("submit") }
	if BlogURL() != "https://aiagentskills.net/blog/" { t.Fatalf("blog") }
	if CategoryURL("agent-workflows") != "https://aiagentskills.net/category/agent-workflows/" { t.Fatalf("category") }
	if SkillURL("seo-article-writer") != "https://aiagentskills.net/skill/seo-article-writer/" { t.Fatalf("skill") }
	if SearchURL("codex skills") != "https://aiagentskills.net/skills/?q=codex+skills" { t.Fatalf("search: %s", SearchURL("codex skills")) }
}
