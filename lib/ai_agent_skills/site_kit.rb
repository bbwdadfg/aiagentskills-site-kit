require "uri"

module AiAgentSkills
  module SiteKit
    BASE_URL = "https://aiagentskills.net"

    module_function

    def clean_slug(slug)
      slug.to_s.strip.gsub(%r{\A/+|/+\z}, "")
    end

    def url_for(path = "")
      clean = clean_slug(path)
      clean.empty? ? BASE_URL : "#{BASE_URL}/#{clean}/"
    end

    def home_url = BASE_URL
    def skills_url = url_for("skills")
    def submit_url = url_for("submit")
    def blog_url = url_for("blog")
    def category_url(slug) = url_for("category/#{clean_slug(slug)}")
    def skill_url(slug) = url_for("skill/#{clean_slug(slug)}")
    def search_url(query = "")
      value = query.to_s.strip
      value.empty? ? skills_url : "#{BASE_URL}/skills/?q=#{URI.encode_www_form_component(value)}"
    end
  end
end
