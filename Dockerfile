FROM gliderlabs/alpine:3.2
RUN apk add --update redis && rm -rf /var/cache/apk/*
USER redis
WORKDIR /var/lib/redis
ENTRYPOINT ["redis-server"]
