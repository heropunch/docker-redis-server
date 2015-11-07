heropunch/redis-server
======================

A small and simple Redis server.

- Small: `<5MB`
- Simple: acts just like the binary
- Does not run as root


### Usage

```sh
$ docker pull heropunch/redis-server
$ docker run -d
             --name redis \
             --restart=on-failure:5 \
             --net=host \
             -v $SHARED/data/redis/:/var/lib/redis \
             heropunch/redis-server --appendonly yes
```
