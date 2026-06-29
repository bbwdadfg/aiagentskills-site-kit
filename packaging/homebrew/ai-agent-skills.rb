class AiAgentSkills < Formula
  desc "Command-line links for AI Agent Skills"
  homepage "https://aiagentskills.net"
  url "https://github.com/bbwdadfg/aiagentskills-site-kit/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "96866a9560295afbeb69a46427b1c1620f179c747add45d44b10d0dd771797bc"
  license "MIT"

  depends_on "node"

  def install
    inreplace "bin/aiagentskills-site-kit",
      'require("../index.js")',
      "require(\"#{libexec}/index.js\")"
    libexec.install "index.js"
    bin.install "bin/aiagentskills-site-kit" => "ai-agent-skills"
  end

  test do
    assert_equal "https://aiagentskills.net", shell_output("#{bin}/ai-agent-skills home").strip
    assert_match "https://aiagentskills.net/skills/", shell_output("#{bin}/ai-agent-skills skills")
  end
end
