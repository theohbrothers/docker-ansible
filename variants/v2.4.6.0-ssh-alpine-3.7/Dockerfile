FROM alpine:3.7
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

RUN apk add --no-cache ansible=2.4.6.0-r1

RUN apk add --no-cache openssh-client



