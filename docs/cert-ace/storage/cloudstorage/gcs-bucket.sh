#!/bin/bash

# Create a basic bucket
gsutil mb gs://methyl-bucket-test

# Create a lifecycle policy

# Set a lifecycle policy
gsutil lifecycle set lifecycle-policy.json gs://methyl-bucket-test

# Copy a file to the bucket
gsutil cp test.txt gs://methyl/bucket-test

# Create a signed url
gsutil signurl -d 10m signed-url-key.json gs://methyl-bucket-test
