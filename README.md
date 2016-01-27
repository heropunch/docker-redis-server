[![Docker Repository on Quay](https://quay.io/repository/infiniteautomata/redis-server/status)](https://quay.io/repository/infiniteautomata/redis-server)

### infiniteautomata/redis-server

A small and simple Redis server.

- Small: `3MB`
- Simple: acts just like the binary
- Does not run as root


### Usage

```sh
$ docker pull quay.io/infiniteautomata/redis-server
$ docker run -d
             --name redis \
             --restart=on-failure:5 \
             --net=host \
             -v $SHARED/data/redis/:/var/lib/redis \
             quay.io/infiniteautomata/redis-server --appendonly yes
```
