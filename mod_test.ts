import { assertEquals, assertMatch } from "https://deno.land/std@0.224.0/assert/mod.ts";
import { categoryUrl, homeUrl, searchUrl, siteMetadata, skillUrl, skillsUrl, submitUrl, blogUrl } from "./mod.ts";

Deno.test("exports stable AI Agent Skills links", () => {
  assertEquals(homeUrl(), "https://aiagentskills.net");
  assertEquals(skillsUrl(), "https://aiagentskills.net/skills/");
  assertEquals(submitUrl(), "https://aiagentskills.net/submit/");
  assertEquals(blogUrl(), "https://aiagentskills.net/blog/");
  assertEquals(categoryUrl("agent-workflows"), "https://aiagentskills.net/category/agent-workflows/");
  assertEquals(skillUrl("seo-article-writer"), "https://aiagentskills.net/skill/seo-article-writer/");
  assertEquals(searchUrl("codex skills"), "https://aiagentskills.net/skills/?q=codex%20skills");
  assertEquals(siteMetadata.homepage, "https://aiagentskills.net");
  assertMatch(siteMetadata.description, /Claude/);
});
