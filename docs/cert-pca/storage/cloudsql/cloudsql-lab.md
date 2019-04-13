# Create a Cloud SQL instance
Unlike Compute Engine, Cloud SQL can automatically increase the storage size. It is possible to set up a cap to avoid increasing more than set a threshold.
- Instance ID: methyl-sql-lab
 - Root password: P@ssw0rd
 - Location: us-east4-a
 - Advanced options
   - MySQL Version: [5.6 - 5.7]
   - Machine type: db-n1-standard-[1-64]
   - Storage type: [SSD, HDD]
   - Database Flags to handle restart

## Connect to the SQL instance with Cloud Shell
The connection prompts the mysql CLI, not the general Linux Shell CLI.
gcloud sql connect methyl-sql-lab1 --user=root

## Run SQL commands in Cloud Shell
CREATE DATABASE guestbook;
CREATE TABLE
INSERT INTO
