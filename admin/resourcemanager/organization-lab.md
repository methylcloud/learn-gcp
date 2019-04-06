# Organization

## Confirm DNS domain ownership
Authorize domain with Godaddy
 1. Log in Godaddy domain management page
 2. Create a CNAME record with value
    value=d7fy74znreje
    forward=gv-eezmupaaruau7w.dv.googlehosted.com
 3. Create IAM users

## Create organization
1. Login with the user account methyl-admin@methyl.cloud
2. Open IAM & Admin > Identity & Organization, select the organization methyl.cloud.
3. Request the migration of the GCP project methyl-billing
Accept the request and migrate the billing account.
Grant methylcloud IAM role "Project Creator" in the Methyl Cloud organization
With methylcloud, go in IAM > Settings and migrate the project.

## Create a folder
1. Go in resource manager
2. Create folder
  - methyl-folder-overhead
  - methyl-folder-resources

## Grant 2nd user access to project methyl-dev

## Set IAM policy using JSON
gcloud projects get-iam-policy methyl-billing --format json > iam.json
vim iam.json
gcloud projects set-iam-policy methyl-billing iam.json

## Role customization
