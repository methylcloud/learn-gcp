# Compute

## How the different compute services compare?
The compute offering can be ranked from closer to the bare metal to the most abstracted.

 - Google Compute Engine (GCE) runs virtual machines to offer the most flexibility but require overhead.
 - Google Kubernetes Engine (GKE)
 - Google App Engine (GAE) is a Platform as a Service (PaaS) offering to run application in a low-touch configuration. App Engine can be deployed in one of two environment type:
   - Standard is fairly managed type environment but only supports Python, Java, Go
   - Flexible
 - Google Cloud Functions (GCF) is a Function as a Service (FaaS) serverless type of compute. The application is only executed when a request triggers the function.

## Application best practices
 - Segment large monolithic application in smaller services (or microservices)
 - Use Canary deployment to test an update in real condition (5% / 95%) before full roll-out
 - Blue-green deployment to safely and quickly roll-back an update
