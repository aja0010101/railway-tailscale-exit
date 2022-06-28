#!/bin/sh

mkdir -p /tmp/tailscale
/var/runtime/tailscaled --tun=userspace-networking &
until /var/runtime/tailscaled up --authkey=${TAILSCALE_AUTHKEY} --hostname=railway-app --advertise-exit-node
do
    sleep 0.1
done
sleep infinity
