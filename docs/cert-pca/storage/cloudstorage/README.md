# Cloud Storage

## What is Cloud Storage?

Service used to store object-level unstructured (blob) data. It is cheap and can
store between 0 bytes to 5 TB. Cloud storage does not provide a filesystem.

## How is data organized in Cloud Storage

Objects are stored in buckets. Their name is globally unique. Storing many
objects in fewer buckets is more performant that fewer objects in many buckets.

## What are the Cloud storage classes?

All storage classes offer the throughput and latency performance. The difference
is availability, storage duration and pricing. - Multiregional (99.95% SLA) is
replicated in several regions. It is good for frequently accessed data
globally. - Regional (99.9% SLA) is good for data accessed frequently within the
same region. - Nearline (99% SLA) is for infrequently accessed data (1 per
month, e.g. backups) and requires 30 minimum retention and retrieval fee. -
Coldline (99% SLA) is for infrequently accessed data (1 per year or less, e.g.
DR, archive) and has a 90 days minimum retrieval fee retention.

## What is gsutil?
gsutil is CLI utility to interact with Google Cloud Storage. It uses the following format.

```bash
gsutil <command> <option> <target> //command format
gs://<bucket>/<folder>/<file> //bucket format
```

## How is security handled in Cloud Storage?
There are three mechanisms to enforce security with buckets
 - Integration with IAM at the bucket level which is the recommended way when possible (Consistent, audit trail)
 - Access Control List (ACL) at the object level to provide more granular control
 - Signed url for temporary access to a bucket/file to an external member

## How IAM works with Cloud Storage?
 - Standard IAM roles working on the bucket (Admin, Viewer, Creator)
 - Storage Legacy roles which works with ACL

## How ACL works with Cloud Storage?
 - Set access to bucket or files
 - Inheritance from bucket ACL

## What are Cloud storage security best practices?
 - It is really important to only make public buckets of files in a bucket that are intended to be public.
 - Remove permissions for groups / application when they are no longer used
 - Grant permissions to groups instead of individual IAM users

## What is Object Versioning?
 - Object versioning archive all versions/changes made to files in a bucket
 - Disabled by default and applies at the bucket level
 - Greatly increase storage size and cost of the bucket
 - Older versions retain their ACL which may be different from the latest version

## What are versioning properties?
 - Generation number to track the file version when content is updated
 - Metadata generation number for metadata change

## What is Object Lifecycle Management?
 - Define Time To Live (TTL) for objects set at the bucket level
 - Define rules to archive/delete files when TTL is reached
   - Rule define the workflow (number of conditions, and/or) when the condition(s) are met
   - Condition defines the criteria (Age with TTL, before date, storage class, number of newer versions)
   - Action perform a behavior (Delete object, delete version, change storage class)
