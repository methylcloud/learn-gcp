#!/bin/bash

# List existing projects
gcloud projects list

# Create a project
gcloud projects create methyl-project-test

# Create a project with proper settings
gcloud projects create methyl-qa \
 --name methyl-qa \
 --folder 474606863298 \
 --labels=stack=methyl,environment=qa

# Delete a project
gcloud projects delete methyl-project-test
