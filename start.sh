#!/bin/bash
set -e

: "${PROXY_USER:=telegram}"
: "${PROXY_PASS:?PROXY_PASS is required}"

echo "Starting microsocks on 0.0.0.0:1080"
echo "SOCKS5 user: $PROXY_USER"
echo "Password length: ${#PROXY_PASS}"

exec microsocks -i 0.0.0.0 -p 1080 -u "$PROXY_USER" -P "$PROXY_PASS"
