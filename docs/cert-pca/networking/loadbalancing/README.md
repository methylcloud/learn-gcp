# Load Balancing

## Overview
### Why is automation important?
 - Running large workloads or organization require automation to run at scale
 - Reduce human labor and errors
 - Reduce provisioning time

## Load Balancers
### What are Load Balancers?
 - Network appliances distributing incoming traffic to a group of resources (VMs, containers)
 - Consolidate service behind one endpoint
 - Must have a backend defined (Target pool, Instance Group)
 - Firewall rules apply between Load Balancers and instances

### What are Load Balancers backends?
 - Backend service made of one or several backends

### What are the different Load Balancers?
 - Global External Load Balancer
 - Regional External Load Balancer
 - Regional Internal Load Balancer

### What is a Global External Load Balancer?
 - Application (OSI Layer 7) load balancing for HTTP and HTTPS
 - Global scope
 - Support IPv4 and IPv6 with termination at the LB and then proxy to target
 - Support WebSocket
 - Target Instance Groups only
 - Forwarding rule used to define where to send traffic based on criteria
   - By Location by sending end-user request to the closest resource pool
   - By Content by sending the end-user requests to the right backend (URL pattern)

### What is a Regional External Load Balancer?
 - Network (Layer 4) load balancing for TCP/UDP
 - Support any protocol
 - Forwarding rules sending requests to a Target Pool
   - IP Address
   - Protocol (HTTP, FTP, IMAP)
   - Port range

### What is a Regional Internal Load Balancer?
 - Works like the Regional External but is only accessible from within the VPC
 - Useful for placing in front of a backend service to handle service discovery and reliability
 - Cloud Router

## Instance Groups

### What are Instance Groups?
 - Logical object used to pool instances together
 - Require instance template defining how the instances will be deployed
 - Autoscaling

### What are the types of Instance Groups?
 - Managed is preferred as it has more features (Autoscaling, Health checks, Load Balancing integration)
 - Unmanaged

### How does Instance Group work with Autoscaling?
 - Autoscaling increase/decrease the number of instances depending of the load
 - Instance group has just the right number of instances
 - Autoscaling policy uses metrics and threshold (CPU, HTTP requests, Stackdriver metrics)
 - Require minimum/maximum count

### How does Instance Group work with Health checks?
 - Health checks are used to detect faulty instances and auto-repair (Disconnect and rebuild)

### How does Instance Group work with Load Balancing?
 - Provide a target for Load Balancers

### What is Instance Group Updater?
 - Feature to update the software/configuration of a group
 - Supports canary deployment
