# App Engine Lab

## Create the first App Engine service
 1. App Engine > Dashboard
 2. Create Application
    - Region: us-east4
    - Language: Python
    - Environment: Standard
 3. In Cloudshell
    - cd repo/cp100-bookshelf/app-engine
    - gcloud app deploy -v methyl-gae-version-lab-default-v1

## Create an App Engine service with custom settings
 1. App Engine > Dashboard
 2. Create Application
    - Region: us-east4
    - Language: Python
    - Environment: Standard
 3. In Cloudshell
    - cd repo/cp100-bookshelf/app-engine
    - vim app.yaml
    - Add line ```service: methyl-gae-service-lab-bookshelf```
 4. In gcloud SDK
    - gcloud app deploy -v methyl-gae-version-lab-bookshelf-v1
