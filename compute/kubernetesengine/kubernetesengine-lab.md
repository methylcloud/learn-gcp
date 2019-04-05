# Kubernetes
## Create a GKE cluster
GKE used scopes to provide access to other GCP services. GKE take care of a number of operations (upgrade, auto-repair, autoscaling).

Options
 - Template
 - Cluster Name
 - Location type: [Zone, Region]
 - Master cluster version [1.11.7]
 - Number of nodes [1 - x]
 - Machine type [GCE instance types]
 - User info scope

## Review the Source code repository
The configuration file is stored in a YAML file, container-engine/bookshelf-frontend.yaml.
 - It defines the number of replicas (pod running at the same time).
 - Service name (bookshelf-frontend) and labels
 - Spec with LoadBalancer configuration (internal port 8080 and external 80)

## Modify the source code
cd container-engine
sed -i s/your-project-id/$DEVSHELL_PROJECT_ID/ config.py
sed -i s/your-project-id/$DEVSHELL_PROJECT_ID/ bookshelf-frontend.yaml

## Create the container image
gcloud config set container/cluster methyl-gkecluster-lab-bookshelf
docker build -t gcr.io/methyl-project/methyl-image-bookshelf .

## Push the container image to the registry
gcloud docker push gcr.io/methyl-project/methyl-image-bookshelf

## Deploy the image to the cluster
gcloud container clusters get-credentials methyl-gkecluster-lab-bookshelf --zone us-east4
kubectl create -f bookshelf-frontend.yaml
kubectl get pods
kubectl get services

