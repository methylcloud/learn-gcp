#!/bin/bash

# Find billing account ID
gcloud beta billing accounts list

# Link project with existing billing account
gcloud beta billing projects link methyl-qa \
  --billing-account=012533-C38B61-C22ABD
