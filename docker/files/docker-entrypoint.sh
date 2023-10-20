#!/bin/sh

CMD=$1

if [ ! -f /etc/bind/named.conf ]; then
    mkdir -p /var/named
    chown -R named /var/named
fi

$CMD
