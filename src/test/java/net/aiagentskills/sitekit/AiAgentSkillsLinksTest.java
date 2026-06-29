package net.aiagentskills.sitekit;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

class AiAgentSkillsLinksTest {
    @Test
    void buildsLinks() {
        assertEquals("https://aiagentskills.net", AiAgentSkillsLinks.homeUrl());
        assertEquals("https://aiagentskills.net/skills/", AiAgentSkillsLinks.skillsUrl());
        assertEquals("https://aiagentskills.net/submit/", AiAgentSkillsLinks.submitUrl());
        assertEquals("https://aiagentskills.net/blog/", AiAgentSkillsLinks.blogUrl());
        assertEquals("https://aiagentskills.net/category/agent-workflows/", AiAgentSkillsLinks.categoryUrl("agent-workflows"));
        assertEquals("https://aiagentskills.net/skill/seo-article-writer/", AiAgentSkillsLinks.skillUrl("seo-article-writer"));
        assertEquals("https://aiagentskills.net/skills/?q=codex+skills", AiAgentSkillsLinks.searchUrl("codex skills"));
    }
}
