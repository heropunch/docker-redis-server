Redis on Alpine Linux
======================

Very small docker container to run redis.
The non-root user `stoic - uid 25001` is defined.

```
docker pull sutoiku/redis
docker run \
  --name "redis" \
  -d \
  --restart=on-failure:5 \
  --net=host \
  -v $SHARED/data/redis/:/data \
  -u stoic \
  sutoiku/redis:latest redis-server --dir /data
```
