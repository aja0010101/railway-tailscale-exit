#!/bin/sh

/app/tailscaled --tun=userspace-networking --socks5-server=localhost:1055 &
until /app/tailscale up --authkey=${TAILSCALE_AUTHKEY} --hostname=railway-app --advertise-exit-node; do
  sleep 0.1
done
sleep infinity 
echo "Tailscale started"
