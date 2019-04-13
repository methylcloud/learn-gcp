# Networking

## How is GCP networking different from traditional datacenter?
 - Software Defined Network (SDN) enable the provisioning of virtual network resources
 - All the lower-level infrastructure is abstracted
 - Easy to provision and automate

## How is GCP different from other cloud provider?
 - GCP networking was designed following a global and not regional paradigm
 - Virtual Private Cloud (VPC) span in every region
 - Global and consistent management of infrastructure (IP, DNS, Load Balancing, Firewall) across all regions

## What are the components of GCP networking?
  - Virtual Private Cloud (VPC) is the virtual equivalent of a datacenter that hosts all the networking and compute resources
  - Differents zones in the same region for redundancy
  - Internet Gateway providing access to the Internet
  - A route is used to route IP packets to the right part of the network.
  - Load Balancers are used to distribute traffic for an application or endpoint to a number of resources in an Instance Group to process these requests. It improves scalability and high-availability.
  - Cloud DNS is a global service used to store and serve domain names of the workloads using the Domain Name System (DNS) service.
  - Cloud VPN is a service to connect on-premises networks to the cloud using a Virtual Private Network.
  - Cloud Router is a managed service used to provide dynamic routing for Google VPN.
  - Cloud CDN is a Content Delivery Network (CDN) service to store static content in an edge cache closer to the users to optimize bandwidth and latency.

## How can an organization connects its GCP cloud to on-premises network?
 - VPN Gateway connects the VPC region to the on-premises network using an IPSec tunnel
 - Interconnect is a way to connect on-premises and GCP network through a physical connection
 - Direct Peering is an option to connect with the overall Google offering (not just GCP)
