#!/bin/bash

pushd gerrit || exit
git am ../patch/*.patch
popd || exit
