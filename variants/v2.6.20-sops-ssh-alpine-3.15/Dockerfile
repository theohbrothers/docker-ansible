FROM alpine:3.15
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

# Install ansible
RUN set -eux; \
    # Run make with multiple cores
    export MAKEFLAGS="-j$(nproc)"; \
    # Fix cargo error when installing rust/cryptography-cffi: failed to fetch https://github.com/rust-lang/crates.io-index
    export CARGO_NET_GIT_FETCH_WITH_CLI=true; \
    apk add --no-cache make g++ python3 python3-dev py3-pip libffi-dev rust cargo openssl-dev; \
    pip install ansible==2.6.20; \
    apk del make g++ python3-dev py3-pip libffi-dev rust cargo openssl-dev; \
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
