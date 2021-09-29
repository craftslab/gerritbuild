#!/bin/bash

TAG=${RELEASE_VERSION}

pushd gerrit || exit
if [ -d ../patch/$TAG ]; then
    git am ../patch/$TAG/*.patch
fi
popd || exit
