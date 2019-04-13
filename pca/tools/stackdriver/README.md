# Stackdriver overview

## What is Stackdriver?
Stackdriver is a suite of solutions to monitor cloud resources.
 - Stackdriver Monitoring is used to track health metrics for resources
 - Stackdriver Logging is used to store and analyze logs collected from resources
 - Stackdriver Trace is used to find performance issues in App Engine
 - Stackdriver Debugger is used to review and investigate code deployed

## What are Stackdriver features?
 - Works with multiple Cloud provider (GCP and AWS)
 - Consolidate monitoring in one place (single plane of glass)
 - Good noise to signal ratio

# Stackdriver Monitoring
## What is Stackdriver Monitoring?
Stackdriver Monitoring focuses on collecting information about resource health.

## Stackdriver Monitoring Tier
Stackdriver used to have a basic and premium tier.

## Stackdriver Agent
 - Agent installed on systems to collect more system or application information.
 - Collect out of the box third party solutions (Apache, MySQL, RabbitMQ, etc..)

## Groups
Groups are used to group together resources by labels or other categories.

# Stackdriver Logging
## Logging
Solution to collect, store and visualize information found on system and application logs.

 - Logs are grouped and viewed by projects
 - Retention is 400 days for admin activity, 30 days for the rest

## Log types
 - Admin activity log collects information about resource creation and management (enabled by default)
 - Data access collects data about user activity

## Log export
Export of the log require creating a project, filter to select the entries to export, destination and a sink
 - Cloud storage for long-term storage
 - BigQuery for analysis
 - Pub/Sub for integration with other systems

# Stackdriver trace

## What is error reporting?
 - Real-time monitoring of application errors
 - Works with App Engine, Compute Engine, Cloud Functions, AWS EC2

## What is stackdriver trace?
 - Solution used for performance monitoring
 - Enabled by default
 - It is useful to find latency issues, application slowness and bottlenecks
 - A report can be generated if there are at least 100 traces

## What is Stackdriver Debugger?
 - Solution to debug application deployed in real-time
 - Works with App Engine and GKE

