#!/usr/bin/env bash

set -euo pipefail

build_mode="${1:-release}"

cd "$(dirname "$0")"

pushd zygisk-module-sample/module
rm -rf libs obj
debug_mode=1
if [[ "$build_mode" == "release" ]]; then
    debug_mode=0
fi
ndk-build -j4 NDK_DEBUG=$debug_mode
popd

rm -rf out
mkdir -p out
cp -af magisk-installer-zip out
mv zygisk-module-sample/module/libs out/magisk-installer-zip/
zip -r9 out/magisk-module-$build_mode.zip out/magisk-installer-zip