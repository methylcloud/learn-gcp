#!/bin/bash

# Connect to an instance with SSH using gcloud (does not require creating/managing instance SSH keys)
gcloud compute ssh methyl-instance-ssh

# Generate a SSH key in the Cloud Shell (or computer with SDK)
ssh-keygen -t rsa -f methyl-ssh-key -C methyl-admin

# Display and edit the public key (Format: methyl-admin ssh-rsa <KEY> methyl-admin)
cat methyl-ssh-key.pub

# Upload the public key to the project metadata
gcloud compute instances add-metadata methyl-instance-ssh \
  --metadata-from-file ssh-keys=methyl-ssh-key.pub

# Connect to an instance using SSH
ssh -i methyl-ssh-key methyl-admin@35.245.55.38

# Delete ssh-key from instance metadata
gcloud compute instances remove-metadata methyl-instance-ssh \
  --keys ssh-keys
