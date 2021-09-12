FROM alpine:3.9
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

RUN apk add --no-cache ansible=2.7.17-r0

ENTRYPOINT [ "ansible" ]
