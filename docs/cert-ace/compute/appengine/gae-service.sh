#!/bin/bash

# Deploy an app in the folder
cd repositories/sample-bookshelf
gcloud app deploy --version methyl-gae-version-default-v2

# List the services deployed
gcloud app services list

# List the versions
gcloud app versions list

# Split the traffic to a new version deployed
gcloud app services set-traffic default \
  --splits=methyl-gae-version-lab-bookshelf-v1=0.5,methyl-gae-version-lab-bookshelf-v2=0.5

# Display in real time the logs of the service
gcloud app logs tail -s default

# Delete a version requires migrating the traffic to another first
gcloud app versions delete methyl-gae-version-lab-bookshelf-v2
