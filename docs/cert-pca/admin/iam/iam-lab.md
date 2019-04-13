# IAM

## Create custom IAM role
1. Go to IAM & Admin > Roles
2. Select a role (Compute Instance Admin)
3. Create a role from a role
  - title
  - ID
  - role launch (alpha)
  - select permissions

## Create a custom service account
By default, using a service API (Compute Engine) for the first time initialize a google-managed service account.
New resources are suggested to be created with default service account and scope.
It is possible to change the scope of a vm but it has to be shut down.

1. Create a vm with default service account and scope granting read-only access to storage
2. Display the service account used by the vm
gcloud config list
3. List the content of the bucket
gsutil ls gs://methyl-bucket-lab-serviceaccount
4. Copy the content of the bucket
gsutil cp gs://methyl-bucket-lab-serviceaccount/* .
5. Create a test.txt file on the vm
vim test.txt
6. Try to upload the test.txt file in the bucket
gsutil cp test.txt gs://methyl-bucket-lab-serviceaccount
7. Shut down the VM
8. Change the VM scope for storage from read-only to read write
9. Execute again the gsutil copy command to the bucket

