# Kubernetes Engine (GKE)
## What are containers?
Containers are a method to package the entirety of an application and its dependencies (runtimes, libraries, binaries, configuration). It increases portability and avoids incompatibilities between environments.
Unlike a VM, a container does not virtualize the OS and use the one from its host. It only hosts layers of the application. Docker is the most popular container runtime and ecosystem (runtime, tools, registries).

## What is Kubernetes?
Kubernetes (k8s) is an orchestration solution to manage the deployment, scaling of containerized applications. Kubernetes is made of several components

## What are GKE components?
 - Masters are the machines controlling the  Kubernetes platform and nodes
 - Nodes are the machine hosting the container runtime and running containers
 - Pods are groups of containers logically grouped together (usually for the same application). They share the same IP, network and storage.
 - Replication controller ensure the right number of pods are running across nodes to maximize high-availability.
 - Kubectl is the main CLI tool to manage kubernetes

## What is GKE?
Google Kubernetes Engine (GKE) is the managed Kubernetes service to streamline the most complex operations of a k8s platform. GKE is made of:

 - Cluster including Master, workers
 - Replication controller manage the number of pods for each application
 - Services allow to segment pods per application and provide a single point of access behind a load balancer
 - Registries are used to store container image and versioning

Once created, a GKE can be modified by changing the number of nodes and zones covered. The K8s nodes can be found running in Compute Engine.

