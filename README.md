### redis-server

A small and simple Redis server.

- Small: `3MB`
- Simple: acts just like the binary
- Does not run as root


### Usage

```sh
$ docker build -t redis-server .
$ docker run -d
             --name redis \
             --restart=on-failure:5 \
             --net=host \
             -v $SHARED/data/redis/:/var/lib/redis \
             quay.io/infiniteautomata/redis-server --appendonly yes
```
