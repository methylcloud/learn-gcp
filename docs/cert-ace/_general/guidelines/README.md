# 1: Setting up a cloud solution environment
## 1.1 Setting up cloud projects and accounts.
### Assigning users to pre-defined IAM roles within a project.
### Creating projects.
### Enabling APIs within projects.
### Linking users to G Suite identities.
### Provisioning one or more Stackdriver accounts.
## 1.2 Managing billing configuration.
### Creating one or more billing accounts.
### Establishing billing budgets and alerts.
### Linking projects to a billing account.
### Setting up billing exports to estimate daily/monthly charges.
## 1.3 Installing and configuring the command line interface (CLI) and SDK
# 2: Planning and configuring a cloud solution
## 2.1 Planning and estimating GCP product use using the Pricing Calculator.
## 2.2 Planning and configuring compute resources.
### Selecting appropriate compute choices for a given workload
 - Compute Engine
 - Kubernetes Engine
 - App Engine
### Using preemptible VMs and custom machine types as appropriate.
## 2.3 Planning and configuring data storage options.
### Choosing storage options
 - Regional
 - Multi-regional
 - Nearline
 - Coldline)
### Product choice
 - Cloud SQL
 - BigQuery
 - Cloud Spanner
 - Cloud Bigtable)
## 2.4 Planning and configuring network resources.
### Configuring Cloud DNS.
### Differentiating load balancing options.
### Identifying resource locations in a network for availability.

# 3: Deploying and implementing a cloud solution
## 3.1 Deploying and implementing Compute Engine resources.
### Assessing compute quotas and requesting increases.
### Configuring a VM for Stackdriver monitoring and logging.
### Creating an autoscaled managed instance group using an instance template.
### Generating/uploading a custom SSH key for instances.
### Installing the Stackdriver Agent for monitoring and logging.
### Launching a compute instance using Cloud Console and Cloud SDK (gcloud)
 - assign disks
 - availability policy
 - SSH keys
## 3.2 Deploying and implementing Kubernetes Engine resources.
### Configuring Kubernetes Engine application monitoring and logging.
### Deploying a container application to Kubernetes Engine using pods.
### Deploying a Kubernetes Engine cluster.
## 3.3 Deploying and implementing App Engine and Cloud Functions resources.
### Deploying a Cloud Function that receives Google Cloud events
 - Cloud Pub/Sub events
 - Cloud Storage object change notification events
### Deploying an application to App Engine
 - scaling configuration
 - versions
 - traffic splitting
## 3.4 Deploying and implementing data solutions.
### Initializing data systems with products
 - Cloud SQL
 - Cloud Datastore
 - BigQuery
 - Cloud Spanner
 - Cloud Pub/Sub
 - Cloud Bigtable
 - Cloud Dataproc
 - Cloud Storage
### Loading data
Command line upload, API transfer, Import / export, load data from Cloud Storage, streaming data to Cloud Pub/Sub
## 3.5 Deploying and implementing networking resources.
### Creating a load balancer to distribute application network traffic to an application
Global HTTP(S) load balancer, Global SSL Proxy load balancer, Global TCP Proxy load balancer, Regional Network load balancer, Regional Internal load balancer
### Creating a VPC with subnets.
Custom-mode VPC, Shared VPC
### Creating a VPN between a Google VPC and an external network using Cloud VPN.
### Creating ingress and egress firewall rules for a VPC
IP subnets, Tags, Service accounts
### Launching a Compute Engine instance with custom network configuration
Internal-only IP address, Google private access, Static external and private IP address, network tags
## 3.6 Deploying a Solution using Cloud Launcher.
### Browsing Cloud Launcher catalog and viewing solution details.
### Deploying a Cloud Launcher marketplace solution.
## 3.7 Deploying an Application using Deployment Manager.
### Developing Deployment Manager templates to automate deployment of an application.
### Launching a Deployment Manager template to provision GCP resources and configure an application automatically.

# 4: Ensuring successful operation of a cloud solution
## 4.1 Managing Compute Engine resources.
### Attaching a GPU to a new instance and installing CUDA libraries.
### Managing a single VM instance
start, stop, edit configuration, or delete an instance
### SSH/RDP to the instance.
### Viewing current running VM Inventory (instance IDs, details
### Working with Images
create an image from a VM or a snapshot, view images, delete an image
### Working with Instance Groups
set auto scaling parameters, assign instance template, create an instance template, remove instance group
### Working with management interfaces
 - Cloud Console
 - Cloud Shell
 - Cloud SDK
### Working with snapshots
create a snapshot from a VM, view snapshots, delete a snapshot
## 4.2 Managing Kubernetes Engine resources.
### Browsing the container image repository and viewing container image details.
### Viewing current running cluster inventory (nodes, pods, services
### Working with management interfaces
 - Cloud Console
 - Cloud Shell
 - Cloud SDK
### Working with nodes
 - add a node
 - edit a node
 - remove a node
### Working with pods
 - add a pod
 - edit a pod
 - remove a pod
### Working with services
 - add a service
 - edit a service
 - remove a service
## 4.3 Managing App Engine resources.
### Adjusting application traffic splitting parameters.
### Setting scaling parameters for autoscaling instances.
### Working with management interfaces
 - Cloud Console
 - Cloud Shell
 - Cloud SDK
## 4.4 Managing data solutions.
### Backing up and restoring data instances
 - Cloud SQL
 - Cloud Datastore
 - Cloud Dataproc
### Converting Cloud Storage buckets between storage classes.
### Estimating costs of a BigQuery query.
### Executing queries to retrieve data from data instances
 - Cloud SQL
 - BigQuery
 - Cloud Spanner
 - Cloud Datastore
 - Cloud Bigtable
 - Cloud Dataproc
### Moving objects between Cloud Storage buckets.
### Reviewing job status in Cloud Dataproc or BigQuery
### Setting object lifecycle management policies for Cloud Storage buckets.
### Working with management interfaces
 - Cloud Console
 - Cloud Shell
 - Cloud SDK
## 4.5 Managing networking resources.
### Adding a subnet to an existing VPC.
### Expanding a CIDR block subnet to have more IP addresses.
### Reserving static external or internal IP addresses.
### Working with management interfaces
 - Cloud Console
 - Cloud Shell
 - Cloud SDK
## 4.6 Monitoring and logging.
### Configuring log sinks to export logs to external systems
 - On premises
 - BigQuery
### Creating Stackdriver alerts based on resource metrics.
### Creating Stackdriver custom metrics.
### Using cloud diagnostics to research an application issue
 - viewing Cloud Trace data
 - using Cloud Debug to view an application point-in-time
### Viewing and filtering logs in Stackdriver.
### Viewing Google Cloud Platform status.
### Viewing specific log message details in Stackdriver.
### Working with management interfaces
 - Cloud Console
 - Cloud Shell
 - Cloud SDK

# 5: Configuring access and security
## 5.1 Managing Identity and Access Management (IAM)
### Assigning IAM roles to accounts or Google Groups.
### Defining custom IAM roles.
### Viewing account IAM assignments.
## 5.2 Managing service accounts.
### Assigning a service account to VM instances.
### Granting access to a service account in another project.
### Managing service accounts with limited scopes.
## 5.3 Viewing audit logs for project and managed services.
