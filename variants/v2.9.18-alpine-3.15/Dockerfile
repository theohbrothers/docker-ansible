FROM alpine:3.15
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

# Install ansible
RUN set -eux; \
    apk add make g++ python3 python3-dev py3-pip libffi-dev rust cargo openssl-dev; \
    MAKEFLAGS="-j$(nproc)" pip install ansible==2.9.18; \
    apk del make g++ python3-dev py3-pip libffi-dev rust cargo openssl-dev; \
    ansible --version

RUN apk add --no-cache ca-certificates

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
