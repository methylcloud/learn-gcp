# VPC

## What is a VPC?
 - A Virtual Private Cloud (VPC) is the cloud equivalent of data center. It hosts all the network and infrastructure resources necessary to run workloads.
 - VPC are attached to a project, but resources can communicate
   - Shared VPC
   - VPC sharing
 - It is possible to convert an auto VPC to custom, but it is not possible to revert it back to Auto.

## What are the VPC constraints?
 - 7000 VMs per VPC
 - No broadcast/multicast support
 - No IPv6 support for internal IPs

## Subnets
 - In a VPC, a subnet can span multiple zones. Each region of the VPC can have their own Internet Gateway and VPN Gateways.

## IP Addressing
 - The network resources have by default an internal private IP and an optional external public internet IP.
 - External IPs can be either ephemeral (change at restart) or static (reserved and permanently attached). Instances can have only external IP.
 - It can take some time to show the change of IP address on an instance after restarting (ephemeral or static). Try a hard refresh (Ctrl + F5).

## Firewall Rules
### What are firewall rules?
 - Firewall rules are used to filter the network connections between resources
 - Firewall rules can apply to the entire VPC or just specific instances
 - They apply to both:
   - inbound (ingress) which is denied by default
   - outbound (egress) which is allowed by default

### Default firewall rules
 - default-allow-http

### Firewall rule priority
 - In case of conflict, the firewall rule with the lowest priority takes precedence.

### Firewall targetting
- They can targets IP, ports or protocols.
 - Firewall rules use target tags to limit the scope of application
   - All instances
   - Instances having a specific string in their network tag
   - Service accounts

## Network tags
 - Tag assigned to compute resources (Compute Engine instance) to apply firewall rules

Network tags to apply firewall rules targeting the tag
 - Second source filter applies an OR logic to the filtering
   Example: Firewall rule applies to instance with source tag-lab OR intances on 1.0.1.0/24 range

## Routes
 - Routes are used to direct IP traffic to the right subnet
 - Most routes needed are created automatically by the subnet and do not require changes
 - Advanced scenario (Proxy/NAT) requires creating routes and defining next hop (VPN,IP,NAT,Instance)

## Shared VPC
 - Shared VPC are used to provide common network infrastructure to services hosted in projects
 - Architecture
   - Host project contain the VPC shared with other projects
   - Service projects cannot contain a VPC and use the one in the host project
 - Shared VPC are good for cases when common infrastructure (VPN, Interconnect) are centrally managed while the services are segmented in separate project boundaries

