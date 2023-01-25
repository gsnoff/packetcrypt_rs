#!/bin/bash
set -e

. ./pkteer/internal/version.sh
docker run --rm -it -v "$(pwd)":/packetcrypt -w /packetcrypt pkteeros-$PKTEER_DOCKER_VERSION \
    /bin/bash /packetcrypt/pkteer/internal/build.sh
