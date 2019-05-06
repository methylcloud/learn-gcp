#!/bin/bash

# List all nodes
kubectl get nodes

# Get more information on a specific node
kubectl describe gke-methyl-cluster-default-pool-5029ba39-bjj2

# Deploy a pod from a public container image
kubectl run demo --image=nginx --port 80

# Run a command in a pod
kubectl exec -it demo-55fc54cf5c-cbk4r -- /bin/bash

# Delete a specific pod
kubectl delete pods demo-55fc54cf5c-cbk4r

# Delete a deployment (service configuration)
kubectl delete deployments demo
