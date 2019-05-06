#!/bin/bash

# Create a GKE cluster with all options
gcloud beta container clusters create "methyl-cluster" \
  --region "us-east4" \
  --cluster-version "1.11.8-gke.6" \
  --machine-type "f1-micro" \
  --image-type "COS" \
  --disk-type "pd-standard" \
  --disk-size "20" \
  --metadata stack=methyl \
  --service-account "methyl-sa-gce-standard@methyl-lab.iam.gserviceaccount.com" \
  --num-nodes "1" \
  --enable-cloud-logging --enable-cloud-monitoring --no-enable-ip-alias \
  --network "projects/methyl-lab/global/networks/methyl-vpc-lab" \
  --subnetwork "projects/methyl-lab/regions/us-east4/subnetworks/methyl-subnet-lab-us-east4-r1" \
  --addons HorizontalPodAutoscaling,HttpLoadBalancing \
  --enable-autoupgrade --enable-autorepair \
  --labels stack=methyl

# Change the number of nodes in a cluster
gcloud container clusters resize methyl-cluster --size 4 --region us-east4
