const baseUrl = 'https://aiagentskills.net';

String _cleanSlug(String slug) => slug.trim().replaceAll(RegExp(r'^/+|/+$'), '');
String urlFor([String path = '']) {
  final clean = _cleanSlug(path);
  return clean.isEmpty ? baseUrl : '$baseUrl/$clean/';
}

String homeUrl() => baseUrl;
String skillsUrl() => urlFor('skills');
String submitUrl() => urlFor('submit');
String blogUrl() => urlFor('blog');
String categoryUrl(String slug) => urlFor('category/${_cleanSlug(slug)}');
String skillUrl(String slug) => urlFor('skill/${_cleanSlug(slug)}');
String searchUrl([String query = '']) {
  final value = query.trim();
  return value.isEmpty ? skillsUrl() : '$baseUrl/skills/?q=${Uri.encodeQueryComponent(value)}';
}
