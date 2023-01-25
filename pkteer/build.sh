#!/bin/bash
set -e

. ./pkteer/internal/version.sh
docker run --rm -it -v "$(pwd)":/packetcrypt1 pkteeros-$PKTEER_DOCKER_VERSION \
    /bin/bash /packetcrypt1/pkteer/internal/build.sh
