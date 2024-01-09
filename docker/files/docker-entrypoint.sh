#!/bin/sh

CMD=$@

if [ ! -d /var/bind ]; then
    mkdir -p /var/bind
    chown -R named:named /var/bind
    chmod 750 /var/bind
fi

echo "/etc/bind"
ls -al /etc/bind/
echo "/var/bind"
ls -al /var/bind/
echo "Running $CMD..."
$CMD
