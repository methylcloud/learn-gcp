# Storage
## How do you decide where to store data?
The first criteria to decide the storage type is whether the data is structured.

1. Unstructured data (blob) = Cloud Storage
2. Structured
   1. Analytics
      1. Low-latency/update = Big Table
      2. Else = Big Query
   2. Not analytics
      1. Relational (SQL)
         1. Horizontal scalability = Spanner
         2. Else = Cloud SQL
      2. Non-relational (NoSQL)
         1. Cloud Datastore
## What is the difference between a SQL and NoSQL database?
SQL is used when strong consistency is needed.
NoSQL is used for flexibility, scalability and speed.
## What is unstructured data?
Any data not structured in a database engine (SQL or NoSQL).

# Cloud SQL
## What is Cloud SQL?
Cloud SQL is a hosted SQL services running the MySQL engine. Cloud SQL is managed and takes care of update. It provides limited scalability.

# Datastore
## What is Cloud Datastore?
NoSQL is a fully managed service.
Scale easily from 0 to Terrabytes of data.
Supports ACID transaction

# Bigtable
## What is Bigtable?
NoSQL is a managed NoSQL services, used for analytics.

# Spanner
## What is Spanner?
SQL managed service for large scale with capabilities usually found in in NoSQL services (horizontal scaling)

# Cloud Storage
## What is Cloud Storage?
Service used to store object-level unstructured (blob) data. It is cheap and can store between 0 bytes to 5 TB.
Cloud storage does not provide a filesystem.
## How is data organized in Cloud Storage
Objects are stored in buckets. Their name is globally unique.
Storing many objects in fewer buckets is more performant that fewer objects in many buckets.
## What are the Cloud storage classes?
All storage clases offer the throughput and latency performance. The difference is availability, storage duration and pricing.
 - Multiregional (99.95% SLA) is replicated in several regions. It is good for frequetly accessed data globally.
 - Regional (99.9% SLA) is good for data accessed frequently within the same region.
 - Nearline (99% SLA) is for infrequently accessed data (1 per month, e.g. backups) and requires 30 minimum retention and retrieval fee.
 - Coldline (99% SLA) is for infrequently accessed data (1 per year or less, e.g. DR, archive) and has a 90 days minimum retrieval fee retention.
