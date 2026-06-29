const assert = require("node:assert/strict");
const links = require("./index.js");

assert.equal(links.homeUrl(), "https://aiagentskills.net");
assert.equal(links.skillsUrl(), "https://aiagentskills.net/skills/");
assert.equal(links.submitUrl(), "https://aiagentskills.net/submit/");
assert.equal(links.blogUrl(), "https://aiagentskills.net/blog/");
assert.equal(links.categoryUrl("agent-workflows"), "https://aiagentskills.net/category/agent-workflows/");
assert.equal(links.skillUrl("seo-article-writer"), "https://aiagentskills.net/skill/seo-article-writer/");
assert.equal(links.searchUrl("codex skills"), "https://aiagentskills.net/skills/?q=codex%20skills");
assert.equal(links.metadata.homepage, "https://aiagentskills.net");
assert.ok(links.metadata.description.includes("Claude"));
