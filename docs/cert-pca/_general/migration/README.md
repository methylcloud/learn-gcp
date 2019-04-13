# Migration

## Migration plan

## What is the overall methodology?
 1. Plan
 2. Pilot
 3. Move data
 4. Move applications
 5. Optimize

## What is the Assessment phase?
 - Sort applications in categories
   - Easy to move
   - Hard to move
   - Migration not possible
 - Considerations around
   - Business impact
   - Compliance
   - Licensing
   - Dependencies
   - Return on Investment

## What is the pilot phase?
 - Start migrating easy to move applications to build confidence
 - Prepare roll-back plan in case
 - Design and build the cloud foundations (Projects, IAM roles, VPC)

## What is the data migration phase?
 - Identify application data to move well in advance
 - Decide on which service migrate the data (Cloud storage, Cloud SQL, GCE, Datastore)

## What is the migration phase?
 - Using a migration method
   - Rehost is recommended to keep it simple (copy workload as is with little modification)
   - Replatform is moving application and codebase and take advantage of new components/patterns

## What is an optimize phase
 - Once migrated, improve the application architecture or operating model
 - Enable cloud features (autoscaling, auto-healing
 - Use different storage options (Cloud Storage, Datastore, Cloud SQL)
 - Develop automation (Deployment Manager, Terraform, Chef)
 - Enable monitoring with Stackdriver
 - Configure networking (Load Balancing)

## Storage Transfer Service

### What is Storage Transfer Service?
 - Migrate data from sources
   - AWS S3
   - HTTP/S
   - Cloud Storage bucket
 - Destination where the files will be saved
 - Use a sink

### What is a Transfer Job?
 - Transfer job configure the migration of data (Source, Target, Recurrence)

### What is a Transfer Job?
 - Transfer operation is an occurence of a transfer job
 - Option to delete source data after transfer to perform a move
 - Option to perform a recurrent synchronization between source and target

### Which tool to use?
 - Storage Transfer Service is best used for online location (S3, HTTP, another bucket)
 - gsutil for everything else

## Server migration

### What are the method to migrate servers?
 - Compute
 - Storage
 - Network
 - Security
 - Identity
 - Management

### What are the migration requirements?
 - Create a project
 - Design the VPC setup (Regions, Subnets, Firewall)
 - IAM members and roles

### What is a Rehost migration (Lift & Shift)?
 - Migrate a server as is by performing a block copy
 - May be better to rebuild the server if the source was provisioned from a cloud public image
 - Existing rehost tools: Cloud Endure, ATA Motion, Zerto

## Data migration

### When to start data migration?
 - Better to plan early on to leave enough time
 - Depends on total data storage size and bandwidth
 - On slow connections, it would be faster to send the data on an appliance?

### How to optimize data migration?
 - Compress data when possible?
 - Set better connection to the cloud (Interconnect, Peering)
 - gsutil does not throttle traffic
 - gsutil -m to transfer several files at the same time
 - gsutil -o to perform parallel uploads by breaking down the file in smaller chunks
 - Better to use parallel job (cron + gsutil)

### How to handle large/slow transfer?
 - Google Transfer Appliance to load up to 20TB+ data in the data center
 - Ship it back to Google

## How to choose the right storage service?

### Cloud Storage
 - Multi-region
 - Can write from several sources at the same time

### Persistent disk
 - works like a disk
 - Multiple read, one write at the same time

### Cloud SQL
 - Good for SQL database
 - Single zone and not horizontal scaling

### Spanner
 - SQL
 - Multi region and horizontal support

### Datastore
 - Unstructured data (blog, medias) will be migrated to Cloud Storage
 - NoSQL database
 - Can handle terabyte

### BigTable
 - NoSQL database and HBase compatible
 - Can scale to PB but more expensive

### BigQuery
 - Analytics data warehouse
 - SQL queries

### Memorystore
 - In-Memory database (sub millisecond latency)
 - Use Redis engine
 - Two modes: Basic (one zone), standard (replica in another zone)
