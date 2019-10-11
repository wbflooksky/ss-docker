#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage:"
    echo "./build_docker.sh tag"
    exit 1
fi

set -x

docker build -t docker.io/adolfheir/shadowsocks:$1 -f ../Dockerfile .

docker push adolfheir/shadowsocks:$1

set +x
