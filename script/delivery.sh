#!/bin/bash

pushd gerrit || exit
curl -k -u"$USER":"$TOKEN" -T bazel-bin/release.war https://craftslab.jfrog.io/artifactory/gerrit-release/gerrit-"${RELEASE_VERSION}".war
popd || exit
