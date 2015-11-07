FROM gliderlabs/alpine:3.2
MAINTAINER Carlos Killpack <carlos@infinite.ai>
RUN apk add --update redis && rm -rf /var/cache/apk/*
USER redis
WORKDIR /var/lib/redis
ENTRYPOINT ["redis-server"]
