# Security

## What is separation of duties?
 - Do not grant all the permissions to the same persons/teams
 - Segment the environments (dev/prod) in different projects
 - Only provide the least amount of permission to do their job

## What are GCP access control mechanisms?
 - IAM works for each GCP service
 - ACL works in Cloud Storage Bucket at the object
 - Presigned url for external users

## What is penetration testing?
 - security audit performed by an organization to find vulnerability
 - better performed from the outside network to replicate real life conditions

## What is segmentation
 - Predefined roles grant access to all resources in the project (All VPCs)
 - By creating many smaller container objects (e.g Projects), users have access to less resources

## How to segment networks in GCP?
  - Create many projects to isolate user scope and permissions
  - Create Firewall rules to segment connections by tags and ports
  - Load Balancers do not need firewall rules, but Health Check probes do on specific subnet ranges
  - Bastion host reachable with a public IP to SSH/RDP to connect to other internal resources

## What are the compliance requirements?
 - Most audit needs could be satisfied by Stackdriver logging
 - Billing data could also be audited in Cloud Storage / BigQuery

## How to ensure compliance with PCI/DSS?
 - Payment Card Industry / Data Security Standard (PCI/DSS)
 - Set up a PCI/DSS way to send logging data
   1. Squid proxy to send data to Stackdriver logging
   2. Stackdriver logging export to BigQuery

## How to authenticate a database migration to datastore?
 - Use API authentication OAuth 2.0
 - Export to Cloud Storage, then Datastore
