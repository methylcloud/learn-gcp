#!/bin/bash

# Create snapshots (explicitly ask for zone)
gcloud compute disks snapshot methyl-instance-snapshot --zone us-east4-a

# List existing snapshosts
gcloud compute snapshots list

# Delete a snapshot
gcloud compute snapshosts delete qhb3vxsea355
