#!/bin/bash

# Create Account
#sudo adduser gerrit
#sudo su gerrit

# Clean Gerrit
#rm -rf /path/to/gerrit/install/*

# Add Plugins
#mkdir -p /path/to/gerrit/install/plugins
#cp -rf /path/to/gerrit/bazel-genfiles/plugins/*.jar /path/to/gerrit/install/plugins/

# Init Gerrit
java -jar /path/to/gerrit/bazel-bin/release.war init -d /path/to/gerrit/install/

# Run Gerrit
# HTTP: 127.0.0.1:8080
#/path/to/gerrit/install/bin/gerrit.sh start
#/path/to/gerrit/install/bin/gerrit.sh stop

# Generate SSH Key
#ssh-keygen -t rsa
#cat ~/.ssh/id_rsa.pub

# Test SSH Connection
#ssh -p 29418 lemonjia@127.0.0.1

# Enable Verified Label in Change
# Title: How to set verified on a commit in Gerrit
# Link: https://groups.google.com/forum/#!topic/repo-discuss/SmCBRfgcvgs
