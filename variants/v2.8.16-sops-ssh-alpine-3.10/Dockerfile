FROM alpine:3.10

RUN apk add --no-cache ansible=2.8.16-r0

RUN wget -qO- https://github.com/mozilla/sops/releases/download/v3.7.1/sops-v3.7.1.linux > /usr/local/bin/sops

RUN apk add --no-cache openssh-client



