#!/bin/bash

# Create image
gcloud compute images create methyl-image-linux-base \
  --source-disk=methyl-instance-lab-vpn-a \
  --family linux

# List custom images
gcloud compute images list --no-standard-images

# Delete image without confirmation
gcloud compute images delete methyl-image-linux-base --quiet
