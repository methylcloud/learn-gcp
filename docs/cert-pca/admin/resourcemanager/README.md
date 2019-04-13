# Organization

## Resources
### What is a resource?
 - Account-level resources for management (Organization, Projects, Folder)
 - Service resources (Instances, Buckets, GKE Clusters)

### How does the resource integrate in the hierarchy?
 - All resources except Organization has one parent
 - Resources can be set with policies (Organization and/or IAM)

### What are the resources in the hierarchy?
 - Domain provide identity services
 - Organization is an object representing the overall organization (company or agency).
 - Folders
 - Projects
 - Resources

### What is a domain?
 - Provide identity services
 - Linked to G-Suite or Cloud Identity
 - 1:1 relationship between Domain and Organization

### What is an Organization node?
 - Root node at the apex of the organization structure
 - Mapped to G Suite or Cloud Identity domain
 - Managed by Organization admin and Organization Owners

### What is a Folder?
 - Node under the Organization Node used to host projects or other folders
 - Used to organize projects and grant IAM policies

### What is a Project?
 - Host service resources (VM, Buckets, etc...)
 - Services API are disabled/enabled at the project level

### What is a Resource?
 - Service resources must belong to a project

## Quotas
 - Soft limit on number of resources available per project/region.
 - Used to avoid over-provisioning and unexpected overspending.
 - Categorized by Service (e.g. Compute Engine) and Metric (CPU in us-east-4).
 - They can be increased by issuing a quota increase request (processed in a few hours).

## Labels
 - Labels are used to tag resources to simplify resource filtering, inventory, billing.
 - Key value pair (e.g. Application:wordpress).
 - Typical labels: Environment (Dev, Prod), Owner, Cost Center (Marketing), App Component (Database), Resource state (powered-down)
 - To not be confused with network tags used to configure VPC/Network firewall rules
 - Labels can be used to search resources in the Filter bar
