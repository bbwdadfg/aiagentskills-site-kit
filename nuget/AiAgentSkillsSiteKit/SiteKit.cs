namespace AiAgentSkillsSiteKit;

public static class SiteKit
{
    public const string BaseUrl = "https://aiagentskills.net";
    private static string CleanSlug(string? slug) => (slug ?? string.Empty).Trim().Trim('/');
    public static string UrlFor(string? path = null) => CleanSlug(path) == string.Empty ? BaseUrl : $"{BaseUrl}/{CleanSlug(path)}/";
    public static string HomeUrl() => BaseUrl;
    public static string SkillsUrl() => UrlFor("skills");
    public static string SubmitUrl() => UrlFor("submit");
    public static string BlogUrl() => UrlFor("blog");
    public static string CategoryUrl(string slug) => UrlFor($"category/{CleanSlug(slug)}");
    public static string SkillUrl(string slug) => UrlFor($"skill/{CleanSlug(slug)}");
    public static string SearchUrl(string? query = null) => string.IsNullOrWhiteSpace(query) ? SkillsUrl() : $"{BaseUrl}/skills/?q={Uri.EscapeDataString(query.Trim())}";
}
