#!/bin/bash
set -ex

pushd "$(dirname "$0")"

git clone https://github.com/emscripten-core/emsdk.git || true
pushd emsdk
git pull
./emsdk install latest
./emsdk activate latest
popd

popd
