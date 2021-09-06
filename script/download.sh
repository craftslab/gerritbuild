#!/bin/bash

TAG=$1

git clone --recurse-submodules https://gerrit.googlesource.com/gerrit

pushd gerrit
git checkout --recurse-submodules v$TAG
popd

#git clone --recurse-submodules https://gerrit.googlesource.com/gerrit --depth 1
#
#pushd source/gerrit
#
#git checkout master
#git pull origin master
#git pull -t origin master
#
#git submodule foreach git checkout master
#git submodule foreach git pull origin master
#git submodule foreach git pull -t origin master
#
#git checkout tags/v$TAG -b $TAG
#git submodule foreach git checkout tags/v$TAG -b $TAG
#
#popd
