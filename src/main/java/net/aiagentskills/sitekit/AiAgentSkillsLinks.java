package net.aiagentskills.sitekit;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

/** URL helpers for AI Agent Skills. */
public final class AiAgentSkillsLinks {
    public static final String BASE_URL = "https://aiagentskills.net";
    private AiAgentSkillsLinks() {}
    public static String homeUrl() { return BASE_URL; }
    public static String urlFor(String path) {
        String clean = path == null ? "" : path.trim().replaceAll("^/+|/+$", "");
        return clean.isEmpty() ? BASE_URL : BASE_URL + "/" + clean + "/";
    }
    public static String skillsUrl() { return urlFor("skills"); }
    public static String submitUrl() { return urlFor("submit"); }
    public static String blogUrl() { return urlFor("blog"); }
    public static String categoryUrl(String slug) { return urlFor("category/" + slug.trim().replaceAll("^/+|/+$", "")); }
    public static String skillUrl(String slug) { return urlFor("skill/" + slug.trim().replaceAll("^/+|/+$", "")); }
    public static String searchUrl(String query) {
        String value = query == null ? "" : query.trim();
        return value.isEmpty() ? skillsUrl() : BASE_URL + "/skills/?q=" + URLEncoder.encode(value, StandardCharsets.UTF_8);
    }
}
