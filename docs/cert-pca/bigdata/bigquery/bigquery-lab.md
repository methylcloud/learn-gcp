# BigQuery
## What are BigQuery objects?
 - Projects, data are hosted in GCP projects
 - Dataset are grouping of tables
 - Tables contain data organized by columns and row
 - Jobs are requests to query or manipulate the tables

## Create a bigquery dataset
 1. Create a Cloud Storage bucket
 2. Upload structured data (public data in a text format) in the bucket
 3. Create in BigQuery a dataset methyl_dataset_names
 4. Create table methyl_table_names from the Bucket location, with schema
 5. Execute SQL query to display top 5 elements by count

## Public datasets
 - GCP Marketplace provides public datasets provided by institutions or other GCP organizations. They can be used to perform analysis in BQ.
 - Public datasets are sometime provided with sample queries to quickly navigate the data.
