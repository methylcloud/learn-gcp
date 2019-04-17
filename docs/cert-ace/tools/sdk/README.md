# SDK

## SDK
### What is the SDK?
 - Software Development Kit (SDK) is a set of utilities to manage/interface with GCP
 - Made up of several of components (gcloud, gsutil)

### What are SDK components?
 - SDK components are installable utilities (CLI, Libraries, packages) used to manage parts of GCP
 - Default components are: gcloud, bq, gsutil, core libraries

### What are the main SDK components?
 - gcloud is the main CLI used to configure most GCP services
 - bq is used is to managed BigQuery
 - cbt is used to managed BigTable
 - gsutil is used to managed Cloud Storage
 - kubectl is used to manage Kubernetes/GKE

### What is the SDK command syntax?
 - sdk command syntax
 ```<component> <command group> <command>```
 - component is the tool used (e.g. gcloud)
 - command group is the service against which the command is run (e.g. compute)
 - command is the action performed followed by optional parameters (instances list)

### What are SDK configurations?
 - Set of settings used to easily switch/manage different environments or projects
 - 'default' configuration is used out of the box

### How to install the SDK?
 - Best follow the up to date SDK installation steps in the documentation
   https://cloud.google.com/sdk/docs/
 - Use gcloud init to initialize the configuration (login, project)
