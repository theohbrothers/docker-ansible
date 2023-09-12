FROM alpine:3.11
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

# Install ansible
RUN set -eux; \
    apk add --no-cache make g++ python2 python2-dev py2-pip libffi-dev rust cargo openssl-dev; \
    # Fix PyYAML failing. See: https://stackoverflow.com/questions/76708329/docker-compose-no-longer-building-image-attributeerror-cython-sources
    MAKEFLAGS="-j$(nproc)" pip install pyyaml==5.4.1 --no-cache-dir --no-build-isolation; \
    MAKEFLAGS="-j$(nproc)" pip install ansible==2.3.0.0; \
    apk del make g++ python2-dev py2-pip libffi-dev rust cargo openssl-dev; \
    ansible --version

RUN apk add --no-cache ca-certificates

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
