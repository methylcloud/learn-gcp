# Cloud Storage
## Create a bucket
- Bucket name (Need to be globally unique)
 - Storage class
   - Multi-regional [US, Europe, Asia ]
   - Regional [us-east-1, us-east-4, ...]
   - Nearline [Multi-regions or Regions]
   - Coldline [Multi-regions or Regions]
 - Location

## Create a bucket with CLI
```Bash
gsutil mb -l us-east4 gs://methyl-bucket-lab-cli
```
## Upload files
Use drag & drop or "Upload files" wizard to select files from local filesystem.

## Change storage class
It is not possible to change a Regional to Multi-Regional, or Multi-Regional to Regional.
Existing objects keep their original storage class after a change. This would have to be changed using API or CLI commands.
Only new objects use the new storage class.

## Integrate Cloud Storage with App Engine
Scenario: An application running in App Engine is using solely Datastore for data storage. We are setting it up to use both Datastore and Cloud Storage for the unstructured data.

```Bash
# Create a cloud storage bucket
gsutil mb -l us-east4 gs://methyl-bucket-lab-bookshelf

# Set the permissions
gsutil defacl ch -u AllUsers:R gs://methyl-bucket-lab-bookshelf

# Set the bookshelf app code to use the storage bucket in the config
vim cloudstorage\config.py
  #CLOUD_STORAGE_BUCKET = 'methyl-bucket-lab-bookshelf'

# Deploy the new version
gcloud app deploy
```

## Change existing objects storage class
gsutil -m rewrite -r -s NEARLINE -k gs://methyl-bucket-repo-bookshelf/*
