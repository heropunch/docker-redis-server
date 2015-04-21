Redis on Alpine Linux
======================

Docker container to run redis:
- small: 6.2MBs
- simple: no entrypoint, no scripts that require a root user to run `chown` or `chmod`.
- the non-root user `stoic - uid 25001` is defined.


Usage
=====
```
docker pull sutoiku/redis
docker run \
  --name "redis" \
  -d \
  --restart=on-failure:5 \
  --net=host \
  -v $SHARED/data/redis/:/data \
  -u stoic \
  sutoiku/redis:latest redis-server --dir /data --appendonly yes
```

Other notable redis containers
==============================
The official redis image: https://registry.hub.docker.com/_/redis/

- much bigger
- requires the root user to run the container.

Also based on ALpine Linux: https://registry.hub.docker.com/u/webhippie/redis/
- very configurable
- requires the root user to run the container.
