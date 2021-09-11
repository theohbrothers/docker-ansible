@"
FROM $( $VARIANT['_metadata']['distro'] ):$( $VARIANT['_metadata']['distro_version'] )
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on `$BUILDPLATFORM, building for `$TARGETPLATFORM"

RUN apk add --no-cache $( $VARIANT['_metadata']['package'] )=$( $VARIANT['_metadata']['package_version'] )

$( if ( $VARIANT['_metadata']['components'] -contains 'ssh' ) {
@"
RUN apk add --no-cache openssh-client
"@
})
"@
