# IAM

## Overview

### What is IAM?
 - Identity Access Management (IAM) is the solution managing the authorization and permission process in GCP.
 - Authenticate users (credentials, passwords, keys)
 - Authorize authenticated users by checking permissions

### What are the base components of IAM?
 - WHO: members define who can get access
 - WHAT: roles are collection of permissions assigned to members
 - WHERE: resource are the target of permissions

### What is the resource hierarchy?
 - Resources are organized in a hierarchy (Organization > Folder > Project > Resource)
 - Simplifies organization, access management
 - The hierarchy provides inheritance of roles from parent to children objects
 - Broad parent policy overrides more restrictive child policies

### What are the components of the hierarchy?
 - One organization hosting all the resources (account or service)
 - Folders used to organize projects
 - Projects to host all the service resources
 - Service resource for which permissions are granted

## What are IAM best practices?
 - Provide the least amount of privilege needed for a resource/member to perform actions.
 - Rotate service account in a regular basis
 - Provide permissions with groups over individual members

## Members

### What are the member types?
 - Google account used in traditional Google services (Gmail)
 - Service account used for programmatic and machine (should not be used by humans)
 - Google group is a collection of users/service accounts
 - G Suite domain is a collection of all users in the G Suite organization
 - Cloud Identity domain is a collection of all users in the GCP organization

### What are service account?
 - Account used for programmatic use / resources
 - type
  - Google managed are often invisible to users
  - user managed are created by user
 - associated with an account key for authentication
   - key created/managed by default by Google
   - custom key can be managed by user
 - scope are used to determine on what the service account apply

### What are Google Groups?
 - Collection of users and service accounts
 - Simplify access management by applying permissions to group instead of individual users
 - Easy to add/remove users to an existing group
 - Only used for authorization, not authentication (Login, password)

### What is G Suite domain?
 - Collection of all Google accounts members of an organization G Suite domain
 - Displayed as domain name (methyl.cloud, so users are represented by user@methyl.cloud)
 - Only used for authorization, not authentication (Login, password)

## What is a Cloud Identity domain?
 - Collection of all Google accounts members of a GCP organization
 - Unlike G Suite domain, it does not provide access to G Suite applications (Gmail, Docs, Sheets, etc...)
 - Only used for authorization, not authentication (Login, password)

## Roles

### What is a permission?
 - Permission are rules allowing a user to access or modify a resource
 - Named using convention ```<service>.<object>.<action>``` (e.g. computeengine.instances.create).
 - As of 2019, there are 1457 permissions supported a project level
 - Permissions cannot get assigned permission directly, they have to use roles

### What are roles?
 - Collection of permissions
 - primitive are board roles at the project level (owner, editor, viewer)
 - predefined roles at the service level (compute engine)
 - custom role created by the users

### What are the types of role?
 - Primitive roles provide broad access a the project level
   - Viewer
   - Browser
   - Editor provider
   - Owner grants all permissions
 - Predefined roles (355 as of 2019) provide more granular access at the service level
   - E.g Compute
     - Compute Viewer
     - Compute Image User grants permissions to use Images
     - Compute Admin grants all permissions for Compute Engine
 - Custom roles are created by users

## Resources

### What are resources?
 - Resource are the objects for which members get access with the right permissions (roles).
 - Each resource has a policy describing the members and roles having access

### What type of resources is there?
 - Account resources used for organizing service resources
   - Organization
   - Folder
   - Project
 - Service resources are the elements provided by each service (VM instance, Storage buckets)

### What is an IAM policy?
 - Document describing the members and roles defined for a resource
 - Formatted in JSON and can be exported with API/CLI

### What is an organization?
### What is a folder?
### What is a Project?
### What is a service resource?
