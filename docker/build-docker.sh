#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-luckybitpay/luckybitd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/luckybitd docker/bin/
cp $BUILD_DIR/src/luckybit-cli docker/bin/
cp $BUILD_DIR/src/luckybit-tx docker/bin/
strip docker/bin/luckybitd
strip docker/bin/luckybit-cli
strip docker/bin/luckybit-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
