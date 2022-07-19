#!/bin/sh

/app/tailscaled --tun=userspace-networking &
until /app/tailscale up --authkey=${TAILSCALE_AUTHKEY} --hostname=railway-exit --advertise-exit-node; do
    sleep 0.1
done
sleep infinity 
echo "Tailscale started"
