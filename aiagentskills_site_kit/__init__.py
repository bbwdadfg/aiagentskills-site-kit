from urllib.parse import quote

BASE_URL = "https://aiagentskills.net"


def _clean_slug(slug: str) -> str:
    return str(slug or "").strip().strip("/")


def url_for(path: str = "") -> str:
    clean = _clean_slug(path)
    return f"{BASE_URL}/{clean}/" if clean else BASE_URL


def home_url() -> str:
    return BASE_URL


def skills_url() -> str:
    return url_for("skills")


def submit_url() -> str:
    return url_for("submit")


def blog_url() -> str:
    return url_for("blog")


def category_url(slug: str) -> str:
    return url_for(f"category/{_clean_slug(slug)}")


def skill_url(slug: str) -> str:
    return url_for(f"skill/{_clean_slug(slug)}")


def search_url(query: str = "") -> str:
    value = str(query or "").strip()
    return f"{BASE_URL}/skills/?q={quote(value)}" if value else skills_url()


metadata = {
    "name": "AI Agent Skills",
    "homepage": BASE_URL,
    "description": "Curated directory for Claude skills, Codex skills, and AI agent workflows.",
    "canonicalPages": {
        "home": BASE_URL,
        "skills": skills_url(),
        "submit": submit_url(),
        "blog": blog_url(),
        "agentWorkflows": category_url("agent-workflows"),
        "codeGeneration": category_url("code-generation"),
    },
    "tags": ["aiagentskills", "skills", "agents", "claude", "codex"],
}
