#!/bin/bash
set -e

: "${PROXY_USER:=telegram}"
: "${PROXY_PASS:?PROXY_PASS is required}"

exec microsocks -i 0.0.0.0 -p 1080 -u "$PROXY_USER" -P "$PROXY_PASS"
