#!/bin/bash
set -e

: "${PROXY_USER:=telegram}"
: "${PROXY_PASS:?PROXY_PASS is required}"

mkdir -p /etc/3proxy

echo "$PROXY_USER:CL:$PROXY_PASS" > /etc/3proxy/.proxyauth

exec 3proxy /etc/3proxy/3proxy.cfg
