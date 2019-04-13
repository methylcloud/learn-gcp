# Design

## Business case

### What are the advantages of migration business to the cloud?
 - Convert capital expenditure (up front costs) to operational expenditure (pay as you go)
 - Cost reduction because of economy of scale
 - No need to do hardware refresh anymore
 - Elasticity guarantee to have resource tightly aligned to demand (no more overpaying for unused hardware)
 - Increase business agility (faster deployment time and software development testing/integration/release)
 - Managed services that free staff from low-level work to focus on higher value
 - Global scale and world class networking services (Multi-region, CDN) easy to use and inexpensive
 - Benefit from security expertise from Google improving security posture

## Compute Engine cost saving features

### What is Sustained use discount?
 - 30% discount on CE and Cloud SQL VM for long-term workloads
 - Discount calculated across VMs
 - Automatically calculated and applied

### How is sustained use discount calculated?
 - Aggregate usage time for all VMs, so users don't have to worry about run time for each instance
 - Compare machine type

### What are Compute Engine custom machine types?
 - Possibility to change hardware configuration (1GB to 6.5GB RAM)

### What are right-sizing recommendations?
 - Recommend change of machine type if user would benefit (performance, cost saving)
 - Require 8 days of running

### What are Preemptible VMs?
 - Low cost (up to 80% less) disposable VMs that can be shut down and run less than 24 hours
 - Good for batch processing that can be stopped at any time

### How to use preemptible VMs?
 - Use an asynchronous method
   - instance get a job from pub/sub, publish result
 - Design application for fault tolerance (frequent checkpoint, graceful shutdown script)
 - Better to have many smaller machines
 - Better to run off-peak time
 - preserve instance disk (--no-auto-delete-disk)

### What is a committed use discount?
 - Greater discount for long-term commitment on Compute Engine instances
 - Billed by CPU/RAM pool
 - Not tied to instances or machine types
 - Does not stack with sustained use discount

## Design principles

### What are the design principles?
 - High availability
 - Scalability
 - Security
 - Disaster Recovery
 - Cost

### How to design for High Availability?
 - Provide consistent user experience with low-latency
 - Consider resource placement depending of user base (Region, Multi-region, Global)

### How to design for Scalability?
 - Use of autoscaling to have just enough compute resources to follow demand
 - Test workload with load testing
 - Proactively quota limits

### How to design for Security?
 - Always set least amount of privilege
 - Set well designed IAM roles
 - Set firewall rules

### How to design for Disaster Recovery?
 - Snapshots for Compute Engine
 - Failover replica
 - Canary, blue-green deployment (GKE/GCE rolling update, GAE Traffic split)

### How to design for Cost optimization?
 - App Engine daily spend limit
 - Compute Engine preemptible VM
