import Foundation

public enum AiAgentSkillsSiteKit {
    public static let baseURL = "https://aiagentskills.net"
    private static func cleanSlug(_ slug: String) -> String {
        slug.trimmingCharacters(in: CharacterSet(charactersIn: "/ "))
    }
    public static func homeURL() -> String { baseURL }
    public static func url(for path: String = "") -> String {
        let clean = cleanSlug(path)
        return clean.isEmpty ? baseURL : "\(baseURL)/\(clean)/"
    }
    public static func skillsURL() -> String { url(for: "skills") }
    public static func submitURL() -> String { url(for: "submit") }
    public static func blogURL() -> String { url(for: "blog") }
    public static func categoryURL(_ slug: String) -> String { url(for: "category/\(cleanSlug(slug))") }
    public static func skillURL(_ slug: String) -> String { url(for: "skill/\(cleanSlug(slug))") }
    public static func searchURL(_ query: String = "") -> String {
        let value = query.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !value.isEmpty else { return skillsURL() }
        let encoded = value.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? value
        return "\(baseURL)/skills/?q=\(encoded)"
    }
}
