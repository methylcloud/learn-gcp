# Administration

## Resource Management
### Create account
### Create project
 - If an organization exists, create the project under
 - If not, create the project without organization and migrate it later
 - Creating a project without organization introduce the risk of a project being outside the control of the organization and be deleted.

## IAM
 - IAM is not an identity provider and require an account existing in either
   - Google Account
   - G Suite domain
   - Cloud Identity Provider

### Create IAM user
### Set up G Suite identity
 - Cloud Directory Sync is used to federate identity with an identity provider
## Administration
### Enable service API
 - API Dashboard display metrics for API call volume
 - API Library provides a catalog of available API to enable and use

## Billing
### Billing account type
 - Self serve is billed monthly or when threshold is reached, it uses automatic payment (e.g. credit card)
 - Invoiced paid through wire transfer but require setting it up with Google Cloud sales team

### Billing roles
 - Billing Admin grants permissions to manage payment and billing users
 - Billing User grants permissions to create billing accounts
 - Billing Viewer grants read-only view on the billing data

### Billing export
 - Export with BigQuery in a dataset
 - Export with Cloud Storage as a CSV/JSON file

### Create billing account
 1. Billing
 2. Manage billing accounts
 3. Create account
    - Name: methyl-billingaccount-dev
    - Organization: methyl.cloud

### Set budgets
 1. Billing
 2. Manage billing accounts
 3. Select methyl-billingaccount-signup
 4. Budgets & alerts
 5. Create budget
    - Budget name:
    - Billing account:
    - Budget amount:
    - Threshold:

### Set billing export

## Monitoring
### Setup stackdriver

## CLI
### Install Cloud SDK
