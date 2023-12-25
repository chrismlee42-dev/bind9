#!/bin/sh

CMD=$@

if [ ! -d /var/named ]; then
    mkdir -p /var/named
    chown -R named /var/named
    chmod 750 /var/named
fi

ls -al /etc/bind/
echo "Running $CMD..."
$CMD
