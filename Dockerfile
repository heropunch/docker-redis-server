FROM alpine:edge
MAINTAINER 	Hugues Malphettes <hugues@sutoiku.com>

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update && \
  apk add --update redis && rm -rf /var/cache/apk/* && \
  adduser -h /home/stoic -s /bin/sh -u 25001 -D stoic stoic

USER stoic
