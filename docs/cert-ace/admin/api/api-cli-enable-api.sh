#!/bin/bash

# List the GCP service APIs enabled in the project
gcloud services list

# Enable the GCP service APIs needed for the lab
gcloud services enable storage-component.googleapis.com
gcloud services enable sql-component.googleapis.com
gcloud services enable bigtable.googleapis.com
gcloud services enable datastore.googleapis.com
gcloud services enable stackdriver.googleapis.com
