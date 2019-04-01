<!-- markdownlint-disable MD022 MD026 MD032 -->

# Google App Engine
App Engine allows developers to focus on code and not to worry about the the configuration of the infrastructure, network and systems.
## What is a Platform as a Service (PaaS)?
Type of Cloud Computing offering used to abstract the lower level infrastructure so the users focus on the operations of the application.
## What is a Google App Engine (GAE)?
App Engine is Google Cloud solution used to deploy and run applications using a PaaS model.
## Which languages are supported by GAE?
GAE supports 7 languages: Node.js, Python, C#, Java, Go, Ruby, PHP
## What are the infrastructure GAE manages?
Firewall, failover, update, virus, failover, network configuration.
## What are the operations performed when an app is deployed?
Push the code in Cloud Storage, build a Docker container, deploy the container on runtimes.
## What is GAE standard environment?
The standard environment:
 - support 4 programming languages: Java, Python, PHP, Go
 - deploy in seconds an application from nothing to scale
 - does not allow the code to access the local filesystem
 - sandbox in a secure environment without interactions with the hardware and OS
 - priced by instances hour but only there is traffic
## What is GAE flexible environment?
The flexible environment:
 - Supports more languages versions and runtime
 - allow to provide custom runtimes and dependencies in a Docker image
 - Autoscale the instances
 - allow CPU/RAM configuration
 - priced by CPU/RAM resources
## What are the main GAE files
app.yaml is used to define how deploy the application in GAE. Runtime to specificy the version of the programming language runtime, and handler for the app entry point.
main.py loads the app libraries and configuration data
config.py manages the configuration
crud.py to manage create, read, update, delete operations
requirements.txt lists the dependencies needed to run the app
## What are GAE instances?
GAE is creating instances as the load goes up or down.
## What is split traffic in GAE?
Traffic can be split between different GAE versions for blue/green deployments.
## What is a Cloud Endpoint
Feature to expose application REST API with GAE.  It supports Java and Python languages and OAuth 2.0 for authentication.
