FROM alpine:3.18
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

RUN apk add --no-cache ansible-core=2.14.5-r0

RUN apk add --no-cache ca-certificates

CMD [ "ansible" ]
