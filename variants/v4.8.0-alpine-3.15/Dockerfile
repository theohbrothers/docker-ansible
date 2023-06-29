FROM alpine:3.15
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

RUN apk add --no-cache ansible=4.8.0-r0

RUN apk add --no-cache ca-certificates

CMD [ "ansible" ]
