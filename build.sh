#!/bin/bash

BUILD_DIR=bin
NAME=aws-env

mkdir $BUILD_DIR

for GOOS in linux windows; do
    for GOARCH in 386 amd64; do
        CGO_ENABLED=0 GOOS=$GOOS GOARCH=$GOARCH go build -v -o $BUILD_DIR/$NAME-$GOOS-$GOARCH
    done
done
