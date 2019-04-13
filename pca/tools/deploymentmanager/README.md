# Deployment Manager

## What is Deployment Manager?
 - Deployment Manager is an Infrastructure as Code (IaC) solution.
 - It enables the programmatic deployment of infrastructure and resources by using configuration in YAML files.

## What are the advantages of using Deployment Manager?
 - Faster deployment than performing manual operations
 - More consistent deployment patterns and less errors
 - Configuration can be tracked in source version control system for review/rollback
 - Source code changes can be automatically tested and deployed with CI/CD

## How are Deployment Manager YAML configuration files structured?
 - Resource sections
 - Resource properties (Name, Type, Properties)

## Templates
 - Deployment manager can use templates to reuse modular code
 - Templates are defined in Python or Jinja2 format

## Manifest
 - Output of a deployment
 - Information in manifest (IDs) can be reused as input in other code

## Deletion
 - Deleting a deployment would destroy all the resources included (load balancers, firewall rules, instances, etc..)

