#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage:"
    echo "./run_docker.sh tag"
    exit 1
fi

set -x

docker run -dt -p 6443:6443 -p 6500:6500/udp adolfheir/shadowsocks:$1 -m "ss-server" -s "-s 0.0.0.0 -p 6443 -m chacha20-ietf-poly1305 -k admin" -x -e "kcpserver" -k "-t 127.0.0.1:6443 -l :6500 -mode fast2"

set +x
