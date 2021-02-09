#!/usr/bin/env bash

set -e

DIR="$(mktemp -d)"
curl -sL https://github.com/Pinjasaur/bic/archive/master.zip -o "$DIR"/bic.zip
unzip "$DIR"/bic.zip -d "$DIR"/bic
docker build "$DIR"/bic -t bic:ci
docker run --rm -v "$GITHUB_WORKSPACE":/src bic:ci
