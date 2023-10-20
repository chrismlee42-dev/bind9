# ISC BIND 9

Unofficial ISC BIND 9 image largely based on the official ISC BIND 9 image.

Volumes mounted at the following paths may be appropriate:

* `/etc/bind` - BIND configuration; `named.conf` lives here
* `/var/cache/bind` - default working directory; configurable with `options { directory "/var/cache/bind"; };`
* `/var/lib/bind` - standard location for secondary zones
* `/var/log` - log files

## Quickstart

### Recursive DNS Server

```shell
docker run \
  --name=bind9 \
  --restart=always \
  --publish 53:53/udp \
  --publish 53:53/tcp \
  --publish 127.0.0.1:953:953/tcp \
  chrismlee42/bind9
```

### Authoritative DNS Server

Here you will actually want to provide the desired configuration in /etc/bind/named.conf and primary zones, etc… (e.g. it’s not magic, you will have to configure it).

```shell
docker run \
  --name=bind9 \
  --restart=always \
  --publish 53:53/udp \
  --publish 53:53/tcp \
  --publish 127.0.0.1:953:953/tcp \
  --volume /etc/bind \
  --volume /var/cache/bind \
  --volume /var/lib/bind \
  --volume /var/log \
  chrismlee42/bind9
```
