#!/bin/bash

TAG=${RELEASE_VERSION}

git config --global user.email "angersax@sina.com"
git config --global user.name "Jia Jia"

git clone --recurse-submodules https://gerrit.googlesource.com/gerrit

pushd gerrit || exit
git checkout --recurse-submodules "$TAG"
popd || exit
