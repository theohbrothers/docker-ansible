FROM alpine:3.6
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

RUN apk add --no-cache ansible=2.3.0.0-r1

RUN apk add --no-cache ca-certificates

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
