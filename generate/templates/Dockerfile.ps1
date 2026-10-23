@"
FROM $( $VARIANT['_metadata']['distro'] ):$( $VARIANT['_metadata']['distro_version'] )
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on `$BUILDPLATFORM, building for `$TARGETPLATFORM"

# Install ansible
RUN set -eux; \
    apk add --no-cache $( $VARIANT['_metadata']['package'] )$( if ( $VARIANT['_metadata']['distro'] -eq 'alpine' -and $VARIANT['_metadata']['distro_version'] -eq '3.6' ) { '>=' } else { '~=' } )$( $VARIANT['_metadata']['package_version'] ); \
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

    $SOPS_VERSION = "3.13.3"
    Generate-DownloadBinary @{
        binary = 'sops'
        version = $SOPS_VERSION
        checksumsUrl = "https://github.com/getsops/sops/releases/download/v$SOPS_VERSION/sops-v$SOPS_VERSION.checksums.txt"
        platformFallback = 'linux/amd64'
        destination = '/usr/local/bin/sops'
        testCommand = 'sops --version --disable-version-check'
    }

    @"
RUN apk add --no-cache gnupg


"@
}

if ( $VARIANT['_metadata']['components'] -contains 'ssh' ) {
    @"
RUN apk add --no-cache openssh-client


"@
}

if ( $VARIANT['_metadata']['components'] -contains 'step' ) {
    $STEP_VERSION = "v0.27.5"
    Generate-DownloadBinary @{
        binary = 'step'
        version = $STEP_VERSION
        checksumsUrl = "https://github.com/smallstep/cli/releases/download/$STEP_VERSION/checksums.txt"
        archiveformat = '.tar.gz'
        # platforms = $VARIANT['_metadata']['platforms']
        destination = '/usr/local/bin/step'
        testCommand = 'step version'
    }
}

@"
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "ansible" ]

"@
