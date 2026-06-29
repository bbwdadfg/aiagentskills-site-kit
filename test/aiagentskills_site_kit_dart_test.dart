import 'package:test/test.dart';
import 'package:aiagentskills_site_kit/aiagentskills_site_kit.dart' as links;

void main() {
  test('builds AI Agent Skills URLs', () {
    expect(links.homeUrl(), 'https://aiagentskills.net');
    expect(links.skillsUrl(), 'https://aiagentskills.net/skills/');
    expect(links.submitUrl(), 'https://aiagentskills.net/submit/');
    expect(links.blogUrl(), 'https://aiagentskills.net/blog/');
    expect(links.categoryUrl('agent-workflows'), 'https://aiagentskills.net/category/agent-workflows/');
    expect(links.skillUrl('seo-article-writer'), 'https://aiagentskills.net/skill/seo-article-writer/');
    expect(links.searchUrl('codex skills'), 'https://aiagentskills.net/skills/?q=codex+skills');
  });
}
