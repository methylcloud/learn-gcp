# VPC
## Resources
 - Use to connect compute resources: Compute Engine, App Engine, Kubernetes Engine

## Creation
 - auto mode creating subnets in each region using a CIDR range 10.128.0.0/9
 - custom mode with 0 subnet by default and leaving complete control to users
 - auto mode VPC can be converted to custom, but not the opposite

## Subnets
 - Created automatically using auto mode
 - Primary IP range following CIDR
 - Secondary IP range
 - 4 IPs are reserved (First for network, Second for Gateway, Second to last, Last for Broadcast)

## Firewall
### Implied firewall rules
 - deny all ingress connections
 - allow all egress connections
 - default vpc allow internal communication between resource

## Route
 - Direct the IP traffic to the right subnets
 - Default route and custom routes to VPN/NAT gateways

## Forwarding rules
## IP Address
 - Internal IP within GCP
 - External IP for public internet communication
   - Ephemeral IP is attached to the resource while running
   - Reserved IP is static and allocated to a resource
## Interfaces
 - Multiple interfaces (any vpc) can be attached to an instance

## Shared VPC
 - Ability to share VPC network between projects

## VPC Peering
 - Connection between VPCs

# Hybrid Cloud
## VPN
## Interconnect
# Load Balancing

Add Networking notes

Added study notes (Concepts, Q&A, Labs) on the Networking services:
 - VPC
 - Router
 - Interconnect
 - VPN
