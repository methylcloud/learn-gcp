# Cloud Storage IAM

## Assign IAM role to bucket in the console
 1. Storage > Browser
 2. Click on bucket methyl-bucket-department-swe
 3. Click on Permissions, click on Add members
 4. Enter user-swe-user and add roles and click on Save
    - Storage > Storage Object Viewer
    - Storage > Storage Object Creator

## Assign IAM role to bucket in CLI
```bash
# Create the ACL on the bucket
gsutil iam ch user:user-swe-user@methyl.cloud:objectCreator,objectViewer gs://methyl-bucket-department-swe

# Delete the ACL on the bucket
gsutil iam ch -d user:user-swe-user@methyl.cloud gs://methyl-bucket-department-swe
```

## Access Storage bucket with URL
Accessing a Cloud Storage bucket via URL is possible if the user does not have Project Browser permissions.
https://console.cloud.google.com/storage/browser/methyl-bucket-department-swe

## Assign ACL to a file in the console
 1. Select a file in the bucket, click on ellipis button > Edit permissions
 2. Click on Add item, select Entity user and enter user-swe-user@methyl.cloud and click on Save
 3. In user-swe-user session, open the URL
    https://storage.cloud.google.com/methyl-bucket-department-swe/books/cathedral_and_the_bazaar.pdf

## Assign ACL to a file in CLI
```bash
# Create the bucket ACL (READ, WRITE, OWNER)
gsutil acl ch -u user-swe-user@methyl.cloud:READ gs://methyl-bucket-department-swe

# Create an ACL for all .pdf files
gsutil acl ch -u user-swe-user@methyl.cloud:READ gs://methyl-bucket-department-swe/*.pdf

# Delete the bucket ACL
gsutil acl ch -d user-swe-user@methyl.cloud gs://methyl-bucket-department-swe
```

## Assign mixed permissions
Scenario where user-swe-user should own the bucket but not access a specific file (sre_case_study.pdf).
 1. Add roles to the member user-swe-user
    - Storage Legacy Bucket Owner to give control of the bucket, but not the files
 2. Open the bucket URL with the user-swe-user session, files can be displayed but not opened
 3. Add roles to the member user-sre-user.
    - Storage Object Creator (Create new files)
    - Storage Object Viewer (Open files but not edit/delete them)
 4. Member user-sre-user can open the files but not delete them

## Assigned signed url
 1. API & Services > Credentials
 2. Create credentials > Service account key
 3. Create a new service account
    - New service account
    - Service account name: methyl-sa-gcs-signedurl
    - Role: Storage Object Viewer
    - Key type: JSON
 4. Download private key methyl-lab-88e2439b30c5.json
 5. Upload the private key on a Cloud Shell session
 6. Execute gcloud command to create signed url
    ```bash gsutil signurl -d 10m methyl-cert.json gs://methyl-bucket-department-swe/designdocs/architecture.md```
 7. Open signed url
    https://storage.googleapis.com/methyl-bucket-department-swe/designdocs/architecture.md?x-goog-signature=[SIGNATURE]&x-goog-algorithm=GOOG4-RSA-SHA256&x-goog-credential=methyl-sa-gcs-signedurl%40methyl-lab.iam.gserviceaccount.com%2F20190407%2Fus-east4%2Fstorage%2Fgoog4_request&x-goog-date=20190407T184546Z&x-goog-expires=600&x-goog-signedheaders=host
