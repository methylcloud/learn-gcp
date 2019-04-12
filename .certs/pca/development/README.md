# Software Development

## General development principles

### What is a SDLC?
 - Software Development Life Cycle (SDLC) is a framework to represent the stages of a software project
 - In GCP, different phases of the SDLC should have their own environment/project (dev/qa/prod)

### What is CI/CD
 - Continuous Integration / Continuous Deployment (CI/CD) is a model to automate build and delivery of software
 - Solutions used: Jenkins, Bamboo, Spinnaker, Circle CI
 - Pipeline in GCP
   1. Push code in Source Repository
   2. Build container in Container Registry
   3. Deploy container image in GKE

### What is Blue/Green deployment?
 - Deployment model reducing the risk and downtime
 - Current live environment is called blue
 - New update is deployed in a mirrored environment called green
 - Traffic is redirect from blue to green
   - If update is a success, terminate blue environment
   - If update has a problem, redirect traffic from green to blue, and keep green for troubleshooting

### What is a Microservice architecture?
 - Break down a monolithic application (on binary per application) in smaller services
 - Microservices scale better depending on load and improve maintainability

## Software troubleshooting

### How to resolve a Java digest error?
 - Java applications are built in JAR files
 - Signed JAR file are provided with a digest (SHA hashing output)
 - Fix require resigning the JAR

### How to resolve a caching under load error?
 - Faulty caching
 - Fix require disabling caching (set http cache flag to -1)
