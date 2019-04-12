# Organization

## Structure
 - Organization is an object representing the overall organization (company or agency).
 - Folders
 - Projects
 - Resources

## Organization node
 - Root node at the apex of the organization structure
 - Mapped to G Suite or Cloud Identity domain
 - Managed by Organization admin and Organization Owners

## Folder node
 - Node under the Organization Node used to host projects or other folders
 - Used to organize projects and grant IAM policies

## Project node
## Resource node

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

Create an instance with labels
gcloud compute instances create methyl-vm-lab10-labelscli --labels stack=methyl,environment=lab
