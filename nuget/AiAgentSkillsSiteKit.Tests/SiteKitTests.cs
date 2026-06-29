using AiAgentSkillsSiteKit;
using Xunit;

namespace AiAgentSkillsSiteKitTests;

public class SiteKitTests
{
    [Fact]
    public void BuildsLinks()
    {
        Assert.Equal("https://aiagentskills.net", SiteKit.HomeUrl());
        Assert.Equal("https://aiagentskills.net/skills/", SiteKit.SkillsUrl());
        Assert.Equal("https://aiagentskills.net/submit/", SiteKit.SubmitUrl());
        Assert.Equal("https://aiagentskills.net/blog/", SiteKit.BlogUrl());
        Assert.Equal("https://aiagentskills.net/category/agent-workflows/", SiteKit.CategoryUrl("agent-workflows"));
        Assert.Equal("https://aiagentskills.net/skill/seo-article-writer/", SiteKit.SkillUrl("seo-article-writer"));
        Assert.Equal("https://aiagentskills.net/skills/?q=codex%20skills", SiteKit.SearchUrl("codex skills"));
    }
}
