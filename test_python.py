import unittest
import aiagentskills_site_kit as links


class AiAgentSkillsSiteKitTest(unittest.TestCase):
    def test_links(self):
        self.assertEqual(links.home_url(), "https://aiagentskills.net")
        self.assertEqual(links.skills_url(), "https://aiagentskills.net/skills/")
        self.assertEqual(links.submit_url(), "https://aiagentskills.net/submit/")
        self.assertEqual(links.blog_url(), "https://aiagentskills.net/blog/")
        self.assertEqual(links.category_url("agent-workflows"), "https://aiagentskills.net/category/agent-workflows/")
        self.assertEqual(links.skill_url("seo-article-writer"), "https://aiagentskills.net/skill/seo-article-writer/")
        self.assertEqual(links.search_url("codex skills"), "https://aiagentskills.net/skills/?q=codex%20skills")
        self.assertEqual(links.metadata["homepage"], "https://aiagentskills.net")


if __name__ == "__main__":
    unittest.main()
