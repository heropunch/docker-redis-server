heropunch/redis-server
======================

Docker container to run redis:

- Small: 6.2MB
- Simple: acts just like the binary
- Does not run as root


### Usage

```sh
$ docker pull heropunch/redis-server
$ docker run -d --name "redis" \
                --restart=on-failure:5 \
                --net=host \
                -v $SHARED/data/redis/:/data \
                heropunch/redis-server --dir /data --appendonly yes
```
