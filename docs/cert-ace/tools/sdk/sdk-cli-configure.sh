#!/bin/bash

# Authenticate the SDK with the google account
gcloud auth login

  # In the Google authentication page click on the account to login with (e.g. admin@methyl.cloud)
  # In the Allow the SDK page, click on Allow

# Set the default settings of the SDK
gcloud config set project methyl-lab
gcloud config set compute/region us-east4
gcloud config set compute/zone us-east4-a
