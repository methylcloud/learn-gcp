# Cloud Storage Versioning

## Enable bucket versioning
```bash
# Check the status of versioning
gsutil versioning get gs://methyl-bucket-lab-versioning

# Enable versioning
gsutil versioning set on gs://methyl-bucket-lab-versioning
```

## Restore file versions
 1. Upload a file in the bucket
 2. Delete the file
 3. Get the file ID
   ```bash gsutil ls -a gs://methyl-bucket-lab-versioning```
 4. Restore the file by copying the version it to the bucket
   ```bash gsutil cp gs://methyl-bucket-lab-versioning/architecture.md#1554664945991342 gs://methyl-bucket-lab-versioning/architecture.md```

## Delete permanently a version
```bash gsutil rm gs://methyl-bucket-lab-versioning/architecture.md#1554664945991342```

## Delete all files AND versions
```bash gsutil rm -r gs://methyl-bucket-lab-versioning/*```

## Restore previous versions
```bash
# Create a text file enter string Version=1
vim test.txt
# Upload file to bucket
gsutil cp test-version.txt gs://methyl-bucket-lab-versioning
# Repeat step 1 and 2 several times until Version=3
# Restore Version=1
gsutil cp gs://methyl-bucket-lab-versioning/test-version.txt#1554665552292162 gs://methyl-bucket-lab-versioning/test-version.txt
```
