local site = {}
site.base_url = "https://aiagentskills.net"
site.metadata = {
  name = "AI Agent Skills",
  homepage = site.base_url,
  description = "Curated directory for Claude skills, Codex skills, and AI agent workflows.",
  tags = { "aiagentskills", "skills", "agents", "claude", "codex" }
}
local function clean_slug(slug)
  return tostring(slug or ""):gsub("^/+", ""):gsub("/+$", "")
end
function site.url_for(path)
  local clean = clean_slug(path)
  if clean == "" then return site.base_url end
  return site.base_url .. "/" .. clean .. "/"
end
function site.home_url() return site.base_url end
function site.skills_url() return site.url_for("skills") end
function site.submit_url() return site.url_for("submit") end
function site.blog_url() return site.url_for("blog") end
function site.category_url(slug) return site.url_for("category/" .. clean_slug(slug)) end
function site.skill_url(slug) return site.url_for("skill/" .. clean_slug(slug)) end
function site.search_url(query)
  local value = tostring(query or ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub(" ", "%%20")
  if value == "" then return site.skills_url() end
  return site.base_url .. "/skills/?q=" .. value
end
return site
