# docker-ansible

[![github-actions](https://github.com/theohbrothers/docker-ansible/workflows/ci-master-pr/badge.svg)](https://github.com/theohbrothers/docker-ansible/actions)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/docker-ansible?style=flat-square)](https://github.com/theohbrothers/docker-ansible/releases/)
[![docker-image-size](https://img.shields.io/docker/image-size/theohbrothers/docker-ansible/latest)](https://hub.docker.com/r/theohbrothers/docker-ansible)

Dockerized `ansible` with useful tools.

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
| `:v4.8.0-alpine-3.15`, `:latest` | [View](variants/v4.8.0-alpine-3.15) |
| `:v4.8.0-sops-ssh-alpine-3.15` | [View](variants/v4.8.0-sops-ssh-alpine-3.15) |
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
