# Cloud VPN

## What is Cloud VPN?
 - VPN router to router connection with IPSec protocol
 - Router to router connection, so not standalone VPN client supported
 - Bandwidth is 1.5Gbps with 99.9% SLA, so good for small organization or needs, but not for large enterprise
 - Multiple VPN connections can be set to connect other regions and to increase redundancy

## How does the routing work?
Cloud Router is not required but makes configuration and maintenance simpler
   - Static routing use a routing table for all networks
   - Dynamic routing with Cloud Router using BGP

## What are Cloud VPN components?
- Components
   - VPN Gateway deployed in GCP
   - VPN Gateway configured on-premises (router/server)
 - Requirements
   - The on-premises VPN gateway is configured with a static IP
   - No conflict on the CIDR ranges
