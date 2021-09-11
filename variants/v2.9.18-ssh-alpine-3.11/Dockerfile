FROM alpine:3.11
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

RUN apk add --no-cache ansible=2.9.18-r0

RUN apk add --no-cache openssh-client



