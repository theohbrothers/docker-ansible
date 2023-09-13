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
    apk add --no-cache g++ make python3 python3-dev py3-pip libffi-dev rust cargo git openssl-dev; \
    pip install ansible==2.7.17; \
    apk del g++ make python3-dev py3-pip libffi-dev rust cargo git openssl-dev; \
    ansible --version

RUN apk add --no-cache ca-certificates

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
