FROM alpine:3.11
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

# Install ansible
RUN set -eux; \
    # Run make with multiple cores
    export MAKEFLAGS="-j$(nproc)"; \
    # Fix cargo error when installing rust/cryptography-cffi: failed to fetch https://github.com/rust-lang/crates.io-index
    export CARGO_NET_GIT_FETCH_WITH_CLI=true; \
    apk add --no-cache make g++ python2 python2-dev py2-pip libffi-dev rust cargo openssl-dev; \
    # Fix PyYAML failing. See: https://stackoverflow.com/questions/76708329/docker-compose-no-longer-building-image-attributeerror-cython-sources
    pip install pyyaml==5.4.1 --no-cache-dir --no-build-isolation; \
    pip install ansible==2.3.0.0; \
    apk del make g++ python2-dev py2-pip libffi-dev rust cargo openssl-dev; \
    ansible --version

RUN apk add --no-cache ca-certificates

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
