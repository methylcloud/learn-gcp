#!/bin/bash

# Prepare the installation
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update

# Install the SDK
sudo apt-get install google-cloud-sdk

# Install extra utilities
sudo apt-get install google-cloud-sdk-app-engine-python
sudo apt-get install google-cloud-sdk-cbt
sudo apt-get install kubectl
