const BASE_URL = "https://aiagentskills.net";

function cleanSlug(slug) {
  return String(slug || "").trim().replace(/^\/+|\/+$/g, "");
}

function urlFor(path = "") {
  const clean = cleanSlug(path);
  return clean ? `${BASE_URL}/${clean}/` : BASE_URL;
}

function searchUrl(query = "") {
  const value = String(query || "").trim();
  return value ? `${BASE_URL}/skills/?q=${encodeURIComponent(value)}` : `${BASE_URL}/skills/`;
}

const metadata = Object.freeze({
  name: "AI Agent Skills",
  homepage: BASE_URL,
  description: "Curated directory for Claude skills, Codex skills, and AI agent workflows.",
  canonicalPages: Object.freeze({
    home: BASE_URL,
    skills: `${BASE_URL}/skills/`,
    submit: `${BASE_URL}/submit/`,
    blog: `${BASE_URL}/blog/`,
    agentWorkflows: `${BASE_URL}/category/agent-workflows/`,
    codeGeneration: `${BASE_URL}/category/code-generation/`
  }),
  tags: Object.freeze(["aiagentskills", "skills", "agents", "claude", "codex"])
});

module.exports = {
  BASE_URL,
  metadata,
  homeUrl: () => BASE_URL,
  skillsUrl: () => urlFor("skills"),
  submitUrl: () => urlFor("submit"),
  blogUrl: () => urlFor("blog"),
  categoryUrl: (slug) => urlFor(`category/${cleanSlug(slug)}`),
  skillUrl: (slug) => urlFor(`skill/${cleanSlug(slug)}`),
  searchUrl,
  urlFor
};
