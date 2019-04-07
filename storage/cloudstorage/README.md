# Cloud Storage

## What is Cloud Storage?
Service used to store object-level unstructured (blob) data. It is cheap and can store between 0 bytes to 5 TB.
Cloud storage does not provide a filesystem.

## How is data organized in Cloud Storage
Objects are stored in buckets. Their name is globally unique.
Storing many objects in fewer buckets is more performant that fewer objects in many buckets.

## What are the Cloud storage classes?
All storage classes offer the throughput and latency performance. The difference is availability, storage duration and pricing.
 - Multiregional (99.95% SLA) is replicated in several regions. It is good for frequently accessed data globally.
 - Regional (99.9% SLA) is good for data accessed frequently within the same region.
 - Nearline (99% SLA) is for infrequently accessed data (1 per month, e.g. backups) and requires 30 minimum retention and retrieval fee.
 - Coldline (99% SLA) is for infrequently accessed data (1 per year or less, e.g. DR, archive) and has a 90 days minimum retrieval fee retention.
