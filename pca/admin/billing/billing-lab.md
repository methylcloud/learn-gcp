# Billing
## Create budget
 - budget name
 - billing account
 - amount ($300)
 - threshold levels (50, 90, 100%)

## Create a billing bucket
 1. Create a bucket methyl-bucket-billing
 2. Set up billing export for CSV files

## Create a BigQuery export
1. Create a BigQuery dataset methyl_dataset_billing
2. Set up billing export using the BigQuery dataset

## Review in BigQuery the service usage
SQL query executed to analyze the exported data in BigQuery.

## Create another billing account
1. Go in Billing > Manage billing accounts
2. Create account
3. Enter information (address, credit card)

## Grant permission to user
1. Create an IAM user
2. In the organization level, grant the user the Project Creator role.
3. Sign-in with the user
4. Create a project methyl-lab-billingaccount
5. Open the compute engine dashboard and find the sign up for trial message
6. In the organization level, add the user the role Billing Account User
7. The user can now Enable billing for the project
8. Select the billing account methyl-billingaccount-virtualcard
