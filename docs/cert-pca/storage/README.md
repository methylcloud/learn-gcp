# Storage

## How do you decide where to store data?
The first criteria to decide the storage type is whether the data is structured.

1. Unstructured data (blob) = Cloud Storage
2. Structured
   1. Analytics
      1. Low-latency/update = Big Table
      2. Else = BigQuery
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
