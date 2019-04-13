# Bigtable
## Create a Bigtable instance
Using a production instance type enables clustering options for the Bigtable nodes.
It is possible to upgrade a development environment to production at a later time.
 - Instance Name
 - Instance ID
 - Instance Type: [Production, 3 nodes minimum, Development 1 node]
 - Storage type: SSD had better latency and reads performance, HDD is fine for batch

## Connect to a Bigtable instance
Bigtable instances can be managed using either the CLI "cbt" or using Cloud Shell and an HBase type CLI.

```Bash
vim ~/.cbtrc
  #project = methyl-project
  #instance = methyl-bt-lab01
cbt createtable methyl-table-lab
cbt ls
cbt deletetable methyl-table-lab
```
