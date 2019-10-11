#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage:"
    echo "./run_docker.sh tag"
    exit 1
fi

set -x

docker run -dt -p 6443:6443 adolfheir/shadowsocks:$1 -s "-s 0.0.0.0 -p 6443 -m chacha20-ietf-poly1305 -k test123 -x"

set +x
