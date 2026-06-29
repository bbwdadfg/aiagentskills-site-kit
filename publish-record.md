# Publish Record: AI Agent Skills

- Site: <https://aiagentskills.net>
- Source repo: <https://github.com/bbwdadfg/aiagentskills-site-kit>
- Started: 2026-06-29T09:00:00Z
- Finished: 2026-06-29T09:22:38Z

## Summary

| Status | Count |
| --- | ---: |
| blocked_credentials | 3 |
| blocked_namespace | 2 |
| blocked_review | 1 |
| published | 2 |
| submitted | 1 |
| verified | 11 |

## Published Links

| Platform | Package | Version | Public URL | Verification |
| --- | --- | --- | --- | --- |
| github | `bbwdadfg/aiagentskills-site-kit` | `v0.1.0/v0.1.1` | <https://github.com/bbwdadfg/aiagentskills-site-kit> | repo and release page HTTP 200; homepage in repo metadata/README |
| pkg_go_dev | `github.com/bbwdadfg/aiagentskills-site-kit` | `v0.1.0` | <https://pkg.go.dev/github.com/bbwdadfg/aiagentskills-site-kit> | Go proxy returned v0.1.0; pkg.go.dev page still 404/indexing pending |
| packagist | `bbwdadfg/aiagentskills-site-kit` | `v0.1.1` | <https://packagist.org/packages/bbwdadfg/aiagentskills-site-kit> | Packagist accepted repo and p2 metadata lists v0.1.1 |
| npm | `aiagentskills-site-kit` | `0.1.0` | <https://www.npmjs.com/package/aiagentskills-site-kit> | registry.npmjs.org latest=0.1.0 and homepage/repository present |
| pypi | `aiagentskills-site-kit` | `0.1.0` | <https://pypi.org/project/aiagentskills-site-kit/> | PyPI JSON API returned version 0.1.0 and project URLs |
| pub_dev | `aiagentskills_site_kit` | `0.1.0` | <https://pub.dev/packages/aiagentskills_site_kit> | pub.dev API/page returned latest 0.1.0 |
| hex_hexdocs | `aiagentskills_site_kit` | `0.1.0` | <https://hex.pm/packages/aiagentskills_site_kit> | Hex API returned 0.1.0 and HexDocs page HTTP 200 |
| clojars | `net.clojars.tianwei/aiagentskills-site-kit` | `0.1.0` | <https://clojars.org/net.clojars.tianwei/aiagentskills-site-kit> | Clojars page and repo POM HTTP 200; POM contains homepage and SCM links |
| docker_hub | `baiwei111/aiagentskills-site-kit` | `0.1.0/latest` | <https://hub.docker.com/r/baiwei111/aiagentskills-site-kit> | Docker Registry manifest verified for 0.1.0 with digest sha256:8ba9ec28b8801387555bb2c7d46f9e1a977d1bca84cc3a8b4658d1827697820f |
| nuget | `AiAgentSkillsSiteKit` | `0.1.0` | <https://www.nuget.org/packages/AiAgentSkillsSiteKit/0.1.0> | NuGet flat container and registration API returned version 0.1.0 with projectUrl |
| luarocks | `aiagentskills-site-kit` | `0.1.0-1` | <https://luarocks.org/modules/bbwdadfg/aiagentskills-site-kit> | LuaRocks upload succeeded and public module page HTTP 200 |
| chocolatey | `aiagentskills-site-kit` | `0.1.0` | <https://community.chocolatey.org/packages/aiagentskills-site-kit> | Chocolatey push returned Created; community page HTTP 200, review/scan may still be pending |
| github_packages | `@bbwdadfg/aiagentskills-site-kit` | `0.1.0` | <https://github.com/users/bbwdadfg/packages/npm/package/aiagentskills-site-kit> | GitHub Packages API lists package 0.1.0 but visibility remains private; public page returns 404 |
| gitlab_packages | `aiagentskills-site-kit` | `0.1.0` | <https://gitlab.com/baiwei.chu/aiagentskills-site-kit/-/packages> | GitLab Generic Package Registry lists package; anonymous download SHA256 matched local archive |

## Blocked Or Manual Steps

| Platform | Status | Reason |
| --- | --- | --- |
| crates_io_docs_rs | `blocked_credentials` | publish-package-backlinks/crates-token missing |
| rubygems | `blocked_credentials` | publish-package-backlinks/rubygems-api-key missing |
| jsr | `blocked_namespace` | JSR requires package creation/approval at https://jsr.io/new?scope=bbwdadfg&package=aiagentskills-site-kit&from=cli |
| maven_central_javadoc | `blocked_namespace` | Maven Central artifact not generated/signed in this run |
| cocoapods | `blocked_review` | Install full Xcode and set xcode-select before pod trunk push |
| cpan_metacpan | `blocked_credentials` | Update publish-package-backlinks/cpan-user and cpan-token |

## Credential Cleanup

- packagist: temporary API request files deleted
- npm: temporary npmrc deleted
- pypi: uv token environment cleared
- hex_hexdocs: HEX_API_KEY env cleared
- clojars: temporary Maven settings deleted
- nuget: NUGET_KEY env cleared
- luarocks: LUAROCKS_API_KEY env cleared
- chocolatey: CHOCOKEY env cleared
- github_packages: temporary npmrc deleted
- gitlab_packages: temporary archive deleted

## Follow-Up Queue

- jsr: create/approve @bbwdadfg/aiagentskills-site-kit in JSR UI, then rerun token publish (user/agent)
- github_packages: package published but private; make public in GitHub UI (user/agent)
- cpan_metacpan: replace PAUSE credentials after 401 (user)
- cocoapods: install full Xcode or publish via GitHub Actions with COCOAPODS_TRUNK_TOKEN (user/agent)
- crates_io_docs_rs: add crates token to Keychain then publish (user)
- rubygems: add RubyGems API key to Keychain then publish (user)
- maven_central_javadoc: generate signed Central artifact under verified namespace io.github.bbwdadfg (agent)
