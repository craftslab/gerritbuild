#!/bin/bash

TAG=${RELEASE_VERSION}

git clone --recurse-submodules https://gerrit.googlesource.com/gerrit

pushd gerrit
git checkout --recurse-submodules $TAG
popd
