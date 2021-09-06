#!/bin/bash

# See: https://gerrit-review.googlesource.com/Documentation/dev-bazel.html
# See: https://gerrit-review.googlesource.com/Documentation/dev-release.html

# Install Ant
#sudo apt-get install ant

# Install Apache2 (optional)
#sudo apt-get install --reinstall apache2

# Install Bazel
# See: https://docs.bazel.build/versions/master/install-ubuntu.html
# NOTICE: Bazel 0.8.1 required for building Gerrit 3.x.x and above.
#sudo apt-get upgrade bazel

# Install Maven
#sudo apt install maven

# Install Node.js
#curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
#sudo apt-get install -y nodejs

# Install Zip
#sudo apt install zip

# Install Python2.7
#sudo apt update
#sudo apt install python2.7
#sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
#sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
#sudo update-alternatives --config python
#sudo update-alternatives --list python
#python -V

# Build Gerrit
# Download: $HOME/.gerritcodereview
# Release: /path/to/gerrit/bazel-bin/release.war
version=$1
./tools/version.py $version
git tag -m "v$version" "v$version"
git submodule foreach git tag -m "v$version" "v$version"
bazel build release

# Build Plugins (optional)
# Release: /path/to/gerrit/bazel-genfiles/plugins/*.jar
#pushd source/gerrit
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
