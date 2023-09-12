FROM alpine:3.11
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

# Install ansible
RUN set -eux; \
    apk add make g++ python2 python2-dev py2-pip libffi-dev rust cargo openssl-dev; \
    # Fix PyYAML failing. See: https://stackoverflow.com/questions/76708329/docker-compose-no-longer-building-image-attributeerror-cython-sources
    MAKEFLAGS="-j$(nproc)" pip install pyyaml==5.4.1 --no-cache-dir --no-build-isolation; \
    MAKEFLAGS="-j$(nproc)" pip install ansible==2.4.6.0; \
    apk del make g++ python2-dev py2-pip libffi-dev rust cargo openssl-dev; \
    ansible --version

RUN apk add --no-cache ca-certificates

RUN set -eux; \
    wget -qO- https://github.com/mozilla/sops/releases/download/v3.7.1/sops-v3.7.1.linux > /usr/local/bin/sops; \
    chmod +x /usr/local/bin/sops; \
    sha256sum /usr/local/bin/sops | grep '^185348fd77fc160d5bdf3cd20ecbc796163504fd3df196d7cb29000773657b74 '; \
    sops --version

RUN apk add --no-cache gnupg

RUN apk add --no-cache openssh-client

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
