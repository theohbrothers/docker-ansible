@"
# docker-ansible

[![github-actions](https://github.com/theohbrothers/docker-ansible/workflows/ci-master-pr/badge.svg)](https://github.com/theohbrothers/docker-ansible/actions)
[![github-tag](https://img.shields.io/github/tag/theohbrothers/docker-ansible)](https://github.com/theohbrothers/docker-ansible/releases/)
[![docker-image-size](https://img.shields.io/microbadger/image-size/theohbrothers/docker-ansible/latest)](https://hub.docker.com/r/theohbrothers/docker-ansible)
[![docker-image-layers](https://img.shields.io/microbadger/layers/theohbrothers/docker-ansible/latest)](https://hub.docker.com/r/theohbrothers/docker-ansible)

Dockerized ``ansible`` alpine image with useful tools.

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
$(
($VARIANTS | % {
    if ( $_['tag_as_latest'] ) {
@"
| ``:$( $_['tag'] )``, ``:latest`` | [View](variants/$( $_['tag'] ) ) |

"@
    }else {
@"
| ``:$( $_['tag'] )`` | [View](variants/$( $_['tag'] ) ) |

"@
    }
}) -join ''
)
"@
