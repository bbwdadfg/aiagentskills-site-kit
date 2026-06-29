pub const BASE_URL: &str = "https://aiagentskills.net";

fn clean_slug(slug: &str) -> String {
    slug.trim().trim_matches('/').to_string()
}

pub fn url_for(path: &str) -> String {
    let clean = clean_slug(path);
    if clean.is_empty() { BASE_URL.to_string() } else { format!("{}/{}/", BASE_URL, clean) }
}

pub fn home_url() -> &'static str { BASE_URL }
pub fn skills_url() -> String { url_for("skills") }
pub fn submit_url() -> String { url_for("submit") }
pub fn blog_url() -> String { url_for("blog") }
pub fn category_url(slug: &str) -> String { url_for(&format!("category/{}", clean_slug(slug))) }
pub fn skill_url(slug: &str) -> String { url_for(&format!("skill/{}", clean_slug(slug))) }
pub fn search_url(query: &str) -> String {
    let value = query.trim().replace(' ', "%20");
    if value.is_empty() { skills_url() } else { format!("{}/skills/?q={}", BASE_URL, value) }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn builds_links() {
        assert_eq!(home_url(), "https://aiagentskills.net");
        assert_eq!(skills_url(), "https://aiagentskills.net/skills/");
        assert_eq!(submit_url(), "https://aiagentskills.net/submit/");
        assert_eq!(blog_url(), "https://aiagentskills.net/blog/");
        assert_eq!(category_url("agent-workflows"), "https://aiagentskills.net/category/agent-workflows/");
        assert_eq!(skill_url("seo-article-writer"), "https://aiagentskills.net/skill/seo-article-writer/");
        assert_eq!(search_url("codex skills"), "https://aiagentskills.net/skills/?q=codex%20skills");
    }
}
