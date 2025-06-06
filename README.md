# docker-ansible

[![github-actions](https://github.com/theohbrothers/docker-ansible/actions/workflows/ci-master-pr.yml/badge.svg?branch=master)](https://github.com/theohbrothers/docker-ansible/actions/workflows/ci-master-pr.yml)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/docker-ansible?style=flat-square)](https://github.com/theohbrothers/docker-ansible/releases/)
[![docker-image-size](https://img.shields.io/docker/image-size/theohbrothers/docker-ansible/latest)](https://hub.docker.com/r/theohbrothers/docker-ansible)

Dockerized `ansible` with useful tools.

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
| `:11.6.0-alpine-3.22`, `:latest` | [View](variants/11.6.0-alpine-3.22) |
| `:11.6.0-sops-ssh-step-alpine-3.22` | [View](variants/11.6.0-sops-ssh-step-alpine-3.22) |
| `:11.1.0-alpine-3.21` | [View](variants/11.1.0-alpine-3.21) |
| `:11.1.0-sops-ssh-step-alpine-3.21` | [View](variants/11.1.0-sops-ssh-step-alpine-3.21) |
| `:9.5.1-alpine-3.20` | [View](variants/9.5.1-alpine-3.20) |
| `:9.5.1-sops-ssh-step-alpine-3.20` | [View](variants/9.5.1-sops-ssh-step-alpine-3.20) |
| `:8.6.1-alpine-3.19` | [View](variants/8.6.1-alpine-3.19) |
| `:8.6.1-sops-ssh-step-alpine-3.19` | [View](variants/8.6.1-sops-ssh-step-alpine-3.19) |
| `:7.5.0-alpine-3.18` | [View](variants/7.5.0-alpine-3.18) |
| `:7.5.0-sops-ssh-step-alpine-3.18` | [View](variants/7.5.0-sops-ssh-step-alpine-3.18) |
| `:6.6.0-alpine-3.17` | [View](variants/6.6.0-alpine-3.17) |
| `:6.6.0-sops-ssh-step-alpine-3.17` | [View](variants/6.6.0-sops-ssh-step-alpine-3.17) |
| `:5.8.0-alpine-3.16` | [View](variants/5.8.0-alpine-3.16) |
| `:5.8.0-sops-ssh-step-alpine-3.16` | [View](variants/5.8.0-sops-ssh-step-alpine-3.16) |
| `:4.8.0-alpine-3.15` | [View](variants/4.8.0-alpine-3.15) |
| `:4.8.0-sops-ssh-step-alpine-3.15` | [View](variants/4.8.0-sops-ssh-step-alpine-3.15) |
| `:2.10.7-alpine-3.13` | [View](variants/2.10.7-alpine-3.13) |
| `:2.10.7-sops-ssh-step-alpine-3.13` | [View](variants/2.10.7-sops-ssh-step-alpine-3.13) |
| `:2.9.18-alpine-3.11` | [View](variants/2.9.18-alpine-3.11) |
| `:2.9.18-sops-ssh-step-alpine-3.11` | [View](variants/2.9.18-sops-ssh-step-alpine-3.11) |
| `:2.8.19-alpine-3.10` | [View](variants/2.8.19-alpine-3.10) |
| `:2.8.19-sops-ssh-step-alpine-3.10` | [View](variants/2.8.19-sops-ssh-step-alpine-3.10) |
| `:2.7.17-alpine-3.9` | [View](variants/2.7.17-alpine-3.9) |
| `:2.7.17-sops-ssh-step-alpine-3.9` | [View](variants/2.7.17-sops-ssh-step-alpine-3.9) |
| `:2.6.20-alpine-3.8` | [View](variants/2.6.20-alpine-3.8) |
| `:2.6.20-sops-ssh-step-alpine-3.8` | [View](variants/2.6.20-sops-ssh-step-alpine-3.8) |
| `:2.4.6.0-alpine-3.7` | [View](variants/2.4.6.0-alpine-3.7) |
| `:2.4.6.0-sops-ssh-step-alpine-3.7` | [View](variants/2.4.6.0-sops-ssh-step-alpine-3.7) |
| `:2.3.0.0-alpine-3.6` | [View](variants/2.3.0.0-alpine-3.6) |
| `:2.3.0.0-sops-ssh-step-alpine-3.6` | [View](variants/2.3.0.0-sops-ssh-step-alpine-3.6) |

## Development

Requires Windows `powershell` or [`pwsh`](https://github.com/PowerShell/PowerShell).

```powershell
# Install Generate-DockerImageVariants module: https://github.com/theohbrothers/Generate-DockerImageVariants
Install-Module -Name Generate-DockerImageVariants -Repository PSGallery -Scope CurrentUser -Force -Verbose

# Edit ./generate templates

# Generate the variants
Generate-DockerImageVariants .
```
