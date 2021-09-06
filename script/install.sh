#!/bin/bash

sudo apt update
sudo apt install -y bazel
sudo apt install -y zip

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs
