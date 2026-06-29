export const BASE_URL = "https://aiagentskills.net";

function cleanSlug(slug: string): string {
  return String(slug || "").trim().replace(/^\/+|\/+$/g, "");
}

export function urlFor(path = ""): string {
  const clean = cleanSlug(path);
  return clean ? `${BASE_URL}/${clean}/` : BASE_URL;
}

export function homeUrl(): string { return BASE_URL; }
export function skillsUrl(): string { return urlFor("skills"); }
export function submitUrl(): string { return urlFor("submit"); }
export function blogUrl(): string { return urlFor("blog"); }
export function categoryUrl(slug: string): string { return urlFor(`category/${cleanSlug(slug)}`); }
export function skillUrl(slug: string): string { return urlFor(`skill/${cleanSlug(slug)}`); }
export function searchUrl(query = ""): string {
  const value = String(query || "").trim();
  return value ? `${BASE_URL}/skills/?q=${encodeURIComponent(value)}` : skillsUrl();
}

export interface SiteMetadata {
  readonly name: string;
  readonly homepage: string;
  readonly description: string;
  readonly canonicalPages: {
    readonly home: string;
    readonly skills: string;
    readonly submit: string;
    readonly blog: string;
    readonly agentWorkflows: string;
    readonly codeGeneration: string;
  };
  readonly tags: readonly string[];
}

export const siteMetadata: Readonly<SiteMetadata> = Object.freeze({
  name: "AI Agent Skills",
  homepage: BASE_URL,
  description: "Curated directory for Claude skills, Codex skills, and AI agent workflows.",
  canonicalPages: Object.freeze({
    home: BASE_URL,
    skills: `${BASE_URL}/skills/`,
    submit: `${BASE_URL}/submit/`,
    blog: `${BASE_URL}/blog/`,
    agentWorkflows: `${BASE_URL}/category/agent-workflows/`,
    codeGeneration: `${BASE_URL}/category/code-generation/`,
  }),
  tags: Object.freeze(["aiagentskills", "skills", "agents", "claude", "codex"]),
});
