@"
FROM $( $VARIANT['_metadata']['distro'] ):$( $VARIANT['_metadata']['distro_version'] )
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on `$BUILDPLATFORM, building for `$TARGETPLATFORM"

# Install ansible
RUN set -eux; \
    apk add --no-cache $( $VARIANT['_metadata']['package'] )$( if ( $VARIANT['_metadata']['distro'] -eq 'alpine' -and $VARIANT['_metadata']['distro_version'] -eq '3.6' ) { '=' } else { '~=' } )$( $VARIANT['_metadata']['package_version'] ); \

"@
$( if ($VARIANT['_metadata']['package'] -eq 'ansible-core') {
@"
    apk add ansible; \

"@
})
@"
    ansible --version

RUN apk add --no-cache ca-certificates


"@

if ( $VARIANT['_metadata']['components'] -contains 'sops' ) {
    if ( $VARIANT['_metadata']['distro'] -eq 'alpine' -and $VARIANT['_metadata']['distro_version'] -eq '3.6' ) {
        @"
# Fix wget not working in alpine:3.6. https://github.com/gliderlabs/docker-alpine/issues/423
RUN apk add --no-cache libressl


"@
    }
    @"
RUN set -eux; \
    wget -qO- https://github.com/mozilla/sops/releases/download/v3.7.1/sops-v3.7.1.linux > /usr/local/bin/sops; \
    chmod +x /usr/local/bin/sops; \
    sha256sum /usr/local/bin/sops | grep '^185348fd77fc160d5bdf3cd20ecbc796163504fd3df196d7cb29000773657b74 '; \
    sops --version

RUN apk add --no-cache gnupg


"@
}

if ( $VARIANT['_metadata']['components'] -contains 'ssh' ) {
    @"
RUN apk add --no-cache openssh-client


"@
}

@"
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]

"@
