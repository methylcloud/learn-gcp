# Interconnect

## How to choose the best on-premises connection option?
 1. G Suite / GCP API - Direct Peering
 2. Does not require G Suite / GCP API
    1. Encryption - Cloud VPN
    2. No encryption
       1. No Google POP available - Partner Interconnect
       2. Google POP available / 10Gbps+ need - Dedicated Interconnect

## Interconnect
 - Physical fiber connection to GCP infrastructure
 - There are two types of interconnect
   - Dedicated interconnect is a fiber connection between on-prem and a peer location where Google (GCP) is located
   - Partner interconnect is a fiber connection to a service provider having a peering connection with Google (GCP)
 - There are several advantages
   - Enable VPC internal IPs to connect with on-premises network
   - Enable high-bandwidth connection (10 or 100Gbs per link, 80Gbps maximum for 10 links)
   - Reduce the egress fees
 - For enterprise, it Good for high-bandwidth and traffic but expensive

## Direct peering
 - 10Gbps Connection with the overall Google infrastructure and solution (not GCP specific)
 - Enables connection with non-GCP API and services like G Suite, Youtube, Ads...
