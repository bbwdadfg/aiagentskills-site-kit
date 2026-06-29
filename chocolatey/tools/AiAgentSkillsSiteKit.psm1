function Get-AiAgentSkillsSiteKit {
    [CmdletBinding()]
    param()
    [pscustomobject]@{
        Name = "AI Agent Skills"
        Homepage = "https://aiagentskills.net"
        Skills = "https://aiagentskills.net/skills/"
        Submit = "https://aiagentskills.net/submit/"
        Blog = "https://aiagentskills.net/blog/"
        AgentWorkflows = "https://aiagentskills.net/category/agent-workflows/"
        CodeGeneration = "https://aiagentskills.net/category/code-generation/"
    }
}
Export-ModuleMember -Function Get-AiAgentSkillsSiteKit
