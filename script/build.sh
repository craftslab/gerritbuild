#!/bin/bash

# Build Gerrit
# Download: $HOME/.gerritcodereview
# Release: /path/to/gerrit/bazel-bin/release.war
pushd gerrit || exit
version=${RELEASE_VERSION}
./tools/version.py "$version"
git tag -m "$version" "$version"
git submodule foreach git tag -m "$version" "$version"
bazel build release
popd || exit

# Build Plugins (optional)
# Release: /path/to/gerrit/bazel-genfiles/plugins/*.jar
#pushd gerrit
#bazel build plugins/codemirror-editor
#bazel build plugins/commit-message-length-validator
#bazel build plugins/delete-project
#bazel build plugins/download-commands
#bazel build plugins/gitiles
#bazel build plugins/hooks
#bazel build plugins/plugin-manager
#bazel build plugins/replication
#bazel build plugins/reviewnotes
#bazel build plugins/singleusergroup
#bazel build plugins/webhooks
#popd
