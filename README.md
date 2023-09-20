# docker-ansible

[![github-actions](https://github.com/theohbrothers/docker-ansible/workflows/ci-master-pr/badge.svg)](https://github.com/theohbrothers/docker-ansible/actions)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/docker-ansible?style=flat-square)](https://github.com/theohbrothers/docker-ansible/releases/)
[![docker-image-size](https://img.shields.io/docker/image-size/theohbrothers/docker-ansible/latest)](https://hub.docker.com/r/theohbrothers/docker-ansible)

Dockerized `ansible` with useful tools.

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
| `:v2.14.5-alpine-3.18`, `:latest` | [View](variants/v2.14.5-alpine-3.18) |
| `:v2.14.5-sops-ssh-alpine-3.18` | [View](variants/v2.14.5-sops-ssh-alpine-3.18) |
| `:v2.13.6-alpine-3.17` | [View](variants/v2.13.6-alpine-3.17) |
| `:v2.13.6-sops-ssh-alpine-3.17` | [View](variants/v2.13.6-sops-ssh-alpine-3.17) |
| `:v2.11.6-alpine-3.15` | [View](variants/v2.11.6-alpine-3.15) |
| `:v2.11.6-sops-ssh-alpine-3.15` | [View](variants/v2.11.6-sops-ssh-alpine-3.15) |
| `:v2.10.7-alpine-3.13` | [View](variants/v2.10.7-alpine-3.13) |
| `:v2.10.7-sops-ssh-alpine-3.13` | [View](variants/v2.10.7-sops-ssh-alpine-3.13) |
| `:v2.9.18-alpine-3.11` | [View](variants/v2.9.18-alpine-3.11) |
| `:v2.9.18-sops-ssh-alpine-3.11` | [View](variants/v2.9.18-sops-ssh-alpine-3.11) |
| `:v2.8.19-alpine-3.10` | [View](variants/v2.8.19-alpine-3.10) |
| `:v2.8.19-sops-ssh-alpine-3.10` | [View](variants/v2.8.19-sops-ssh-alpine-3.10) |
| `:v2.7.17-alpine-3.9` | [View](variants/v2.7.17-alpine-3.9) |
| `:v2.7.17-sops-ssh-alpine-3.9` | [View](variants/v2.7.17-sops-ssh-alpine-3.9) |
| `:v2.6.20-alpine-3.8` | [View](variants/v2.6.20-alpine-3.8) |
| `:v2.6.20-sops-ssh-alpine-3.8` | [View](variants/v2.6.20-sops-ssh-alpine-3.8) |
| `:v2.4.6.0-alpine-3.7` | [View](variants/v2.4.6.0-alpine-3.7) |
| `:v2.4.6.0-sops-ssh-alpine-3.7` | [View](variants/v2.4.6.0-sops-ssh-alpine-3.7) |
| `:v2.3.0.0-alpine-3.6` | [View](variants/v2.3.0.0-alpine-3.6) |
| `:v2.3.0.0-sops-ssh-alpine-3.6` | [View](variants/v2.3.0.0-sops-ssh-alpine-3.6) |

## Development

Requires Windows `powershell` or [`pwsh`](https://github.com/PowerShell/PowerShell).

```powershell
# Install Generate-DockerImageVariants module: https://github.com/theohbrothers/Generate-DockerImageVariants
Install-Module -Name Generate-DockerImageVariants -Repository PSGallery -Scope CurrentUser -Force -Verbose

# Edit ./generate templates

# Generate the variants
Generate-DockerImageVariants .
```

### Variant versions

[versions.json](generate/definitions/versions.json) contains a list of [Semver](https://semver.org/) versions, one per line.

To update versions in `versions.json`:

```powershell
./Update-Versions.ps1
```

To update versions in `versions.json`, and open a PR for each changed version, and merge successful PRs one after another (to prevent merge conflicts), and finally create a tagged release and close milestone:

```powershell
$env:GITHUB_TOKEN = 'xxx'
./Update-Versions.ps1 -PR -AutoMergeQueue -AutoRelease
```

To perform a dry run, use `-WhatIf`.
