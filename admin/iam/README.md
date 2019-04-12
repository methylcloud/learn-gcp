# IAM


## Overview
Identity Access Management (IAM) is the solution managing the authorization and permission process in GCP.
 - members define who can get access
 - roles are bundles of permissions assigned to members (permissions are not assigned directly to members)
 - resource are the target of permissions

## Members
## Roles
 - primitive are board roles at the project level (owner, editor, viewer)
 - predefined roles at the service level (compute engine)
 - custom role created by the users
## IAM Policy
 - A policy is a collection of roles assigned to a resource
## Hierarchy
 - Broad parent policy overrides more restrictive child policies
 - It is a good practice to give limited parent permissions and grant more permissions at the resource level
## Resources

## Service account
 - Account used for programmatic use / resources
 - type
  - Google managed are often invisible to users
  - user managed are created by user
 - associated with an account key for authentication
   - key created/managed by default by Google
   - custom key can be managed by user
 - scope are used to determine on what the service account apply

## IAM best practices
Provide the least amount of privilege needed for a resource/member to perform actions.
Rotate service account in a regular basis
Provide permissions with groups over individual members
