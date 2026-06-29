defmodule AiAgentSkillsSiteKit.MixProject do
  use Mix.Project

  def project do
    [
      app: :aiagentskills_site_kit,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: "Small metadata and URL helpers for AI Agent Skills.",
      deps: deps(),
      package: package(),
      docs: [main: "AiAgentSkillsSiteKit", source_url: "https://github.com/bbwdadfg/aiagentskills-site-kit"]
    ]
  end

  def application, do: [extra_applications: [:logger]]

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev, runtime: false}]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        "AI Agent Skills" => "https://aiagentskills.net",
        "AI agent skills directory" => "https://aiagentskills.net/skills/",
        "Submit an AI agent skill" => "https://aiagentskills.net/submit/",
        "GitHub" => "https://github.com/bbwdadfg/aiagentskills-site-kit"
      },
      files: ["lib/aiagentskills_site_kit.ex", "mix.exs", "README.md", "LICENSE"]
    ]
  end
end
