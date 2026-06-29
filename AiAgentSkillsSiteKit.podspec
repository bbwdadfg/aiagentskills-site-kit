Pod::Spec.new do |s|
  s.name = 'AiAgentSkillsSiteKit'
  s.version = '0.1.0'
  s.summary = 'Small URL helpers for AI Agent Skills.'
  s.description = 'Small metadata and URL helpers for AI Agent Skills, a curated Claude, Codex, and AI agent skills directory.'
  s.homepage = 'https://aiagentskills.net'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'AI Agent Skills' => 'hello@aiagentskills.net' }
  s.source = { :git => 'https://github.com/bbwdadfg/aiagentskills-site-kit.git', :tag => 'cocoapods-v0.1.0' }
  s.source_files = 'Sources/AiAgentSkillsSiteKit/**/*.swift'
  s.swift_versions = ['5.9']
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.documentation_url = 'https://aiagentskills.net/skills/'
end
