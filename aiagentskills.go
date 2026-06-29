// Package aiagentskills provides stable links for https://aiagentskills.net.
package aiagentskills

import "net/url"

const BaseURL = "https://aiagentskills.net"

func cleanSlug(slug string) string {
	for len(slug) > 0 && slug[0] == '/' { slug = slug[1:] }
	for len(slug) > 0 && slug[len(slug)-1] == '/' { slug = slug[:len(slug)-1] }
	return slug
}

func URLFor(path string) string {
	clean := cleanSlug(path)
	if clean == "" { return BaseURL }
	return BaseURL + "/" + clean + "/"
}

func HomeURL() string { return BaseURL }
func SkillsURL() string { return URLFor("skills") }
func SubmitURL() string { return URLFor("submit") }
func BlogURL() string { return URLFor("blog") }
func CategoryURL(slug string) string { return URLFor("category/" + cleanSlug(slug)) }
func SkillURL(slug string) string { return URLFor("skill/" + cleanSlug(slug)) }

func SearchURL(query string) string {
	if query == "" { return SkillsURL() }
	return BaseURL + "/skills/?q=" + url.QueryEscape(query)
}
