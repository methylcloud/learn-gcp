# Storage

## How do you decide the right storage option?
> Assessed in: ACE, PCA

The first criteria to decide the storage type is whether the data is structured.

1. Unstructured data (blob) = Cloud Storage
2. Structured
   1. Analytics
      1. Low-latency/frequent update = Big Table
      2. Else = BigQuery
   2. Not analytics
      1. Relational (SQL)
         1. Horizontal scalability = Spanner
         2. Else = Cloud SQL
      2. Non-relational (NoSQL)
         1. Cloud Datastore

## What is Big Table?
> Assessed in: ACE, PCA

