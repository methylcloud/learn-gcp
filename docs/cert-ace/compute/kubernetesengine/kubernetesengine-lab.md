# Kubernetes Engine Lab

## Create a workload from a public container image
 1. Kubernetes Engine > Workloads
 2. Deploy a containerized application > Deploy
    - Container
      - Edit container: New container image
      - Image path: nginx:latest
    - Configuration
      - Application name: methyl-gkeapplication-lab-nginx
      - Namespace: methyl-gkenamespace-lab-nginx
      - Labels: stack:methyl;environment:lab
      - Zone: us-east4-a

