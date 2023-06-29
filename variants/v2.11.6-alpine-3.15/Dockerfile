FROM alpine:3.15
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

RUN apk add --no-cache ansible-core=2.11.6-r1

RUN apk add --no-cache ca-certificates

CMD [ "ansible" ]
