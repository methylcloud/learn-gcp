#!/bin/bash

# Authenticate the SDK with the google account
gcloud auth login

  # IN A WEB BROWSER
  # In the Google authentication page click on the account to login with (e.g. admin@methyl.cloud)
  # In the Allow the SDK page, click on Allow

# Create SDK configuration to easily switch between projects/environments
gcloud config configurations create methyl-billing
gcloud config configurations create methyl-qa
gcloud config configurations create methyl-lab

# List SDK configurations
gcloud config configurations list

# List the settings in the configuration
gcloud config list

# Add settings to the configuration
gcloud config set project methyl-lab
gcloud config set account methyl-admin@methyl.cloud
gcloud config set compute/region us-east4
gcloud config set compute/zone us-east4-a

# Switch between configuration
gcloud config configurations activate methyl-lab

# Delete configuration without confirmation
gcloud config configurations delete methyl-billing --quiet
