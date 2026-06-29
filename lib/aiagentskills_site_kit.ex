defmodule AiAgentSkillsSiteKit do
  @moduledoc """
  Small URL helpers for [AI Agent Skills](https://aiagentskills.net).
  """

  @base_url "https://aiagentskills.net"

  def home_url, do: @base_url
  def skills_url, do: url_for("skills")
  def submit_url, do: url_for("submit")
  def blog_url, do: url_for("blog")
  def category_url(slug), do: url_for("category/#{clean_slug(slug)}")
  def skill_url(slug), do: url_for("skill/#{clean_slug(slug)}")

  def search_url(query \\ "") do
    value = String.trim(to_string(query))
    if value == "", do: skills_url(), else: "#{@base_url}/skills/?q=#{URI.encode(value)}"
  end

  def url_for(path \\ "") do
    clean = clean_slug(path)
    if clean == "", do: @base_url, else: "#{@base_url}/#{clean}/"
  end

  defp clean_slug(slug), do: slug |> to_string() |> String.trim() |> String.trim("/")
end
