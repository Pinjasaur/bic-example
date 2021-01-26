#!/usr/bin/env bash

set -e

DIR="$(mktemp -d)"
curl -sL https://github.com/Pinjasaur/bic/archive/master.zip -o "$DIR"/bic.zip
unzip "$DIR"/bic.zip
docker build "$DIR" -t bic:ci
docker run --rm -v "$PWD":/src bic:ci
