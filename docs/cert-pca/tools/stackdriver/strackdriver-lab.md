# Stackdriver Monitoring

## Create a Stackdriver project
  1. Create a project under the folder methyl-overhead
  2. Name the project methyl-monitoring
  3. Go in Tools > Stackdriver Monitoring
  4. Click on Add Workspace
  5. Select the project methyl-monitoring
  6. Select projects to monitor (methyl-dev and methyl-lab)
  7. Skip AWS integration and Stackdriver agent
  8. Click on Launch Monitoring

## Install the Stackdriver agent
 1. Copy the agent installation commands
 2. Execute the commands on the instances

## Create uptime check
 1. Uptime Checks > Uptime checks overview
 2. Create an uptime check
    - HTTP check
    - hostname using the instance IP
    - path /test.html

# Stackdriver Logging

## Review logs
 - Advanced filter to query using a text format
 - Real time streaming display
 - Log ingestion show log storage

## Export logs
  1. Stackdriver > Logging > Exports
  2. Create a skink
   - sink name: methyl-sink-instance1
   - destination: cloud storage
   - sink destination: methyl-bucket-lab-logging
  3. Create a skink
   - sink name: methyl-sink-instance1-bigquery
   - destination: BigQuery
   - sink destination: methyl_dataset_logging
