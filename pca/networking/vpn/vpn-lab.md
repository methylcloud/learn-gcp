# VPN

## Create VPN with route-based routing
 1. Create External IP address
    - methyl-eip-vpn-1 - 35.199.30.117
    - methyl-eip-vpn-2 - 35.245.55.221
 2. Hybrid Connectivity > VPN
 3. Create gateway 1
    - Gateway
      - Name: methyl-vpn-gateway-1
      - Network: methyl-vpc-lab
      - Region: us-east4
    - Tunnel
      - Name: methyl-vpn-tunnel-1
      - Remote Peer IP: 35.245.55.221
      - Shared secret: password
      - Routing option: Route-based
      - Remote network IP ranges: 10.0.8.0/21
 3. Create gateway 2
    - Gateaway
      - Name: methyl-vpn-gateway-2
      - Network: methyl-vpc-lab2
      - Region: us-east4
    - Tunnel
      - Name: methyl-vpn-tunnel-2
      - Remote Peer IP: 35.199.30.117
      - Shared secret: password
      - Routing option: Route-based
      - Remote network IP ranges: 10.0.0.0/22

## Create resources in different VPCs to test VPN
 1. Create instance methyl-instance-vpn-1 in methyl-vpc-lab
 2. Create instance methyl-instance-vpn-2 in methyl-vpc-lab2
 3. Log in on the instances and confirm ping direction
     - methyl-instance-vpn-1 (10.0.1.9, 35.245.185.38)
       - [ OK] 10.0.1.9
       - [ OK] 35.245.185.38
       - [NOK] 10.0.11.4
       - [ OK] 35.236.250.247
     - methyl-instance-vpn-2 (10.0.11.4, 35.236.250.247)
       - [NOK] 10.0.1.9
       - [ OK] 35.245.185.38
       - [ OK] 10.0.11.4
       - [ OK] 35.236.250.247
 4. After VPN setup private IPs can ping
     - methyl-instance-vpn-1 (10.0.1.9, 35.245.185.38)
       - [ OK] 10.0.1.9
       - [ OK] 10.0.11.4
     - methyl-instance-vpn-2 (10.0.11.4, 35.236.250.247)
       - [ OK] 10.0.1.9
       - [ OK] 10.0.11.4

## Set up a VPN with dynamic routing
 1. Change VPC dynamic routing from Regional to Global
 2. Create External IP address
    - methyl-eip-vpn-1-dynamic - 35.245.151.130
    - methyl-eip-vpn-2-dynamic - 35.245.26.12
 3. Create Cloud Router
    - Name: methyl-router-lab
    - Network: methyl-vpc-lab
    - Region: us-east4
    - Google ASN: 65000
 4. Create Cloud Router
    - Name: methyl-router-lab2
    - Network: methyl-vpc-lab2
    - Region: us-east4
    - Google ASN: 65001
 3. Create gateway 1
    - Gateway
      - Name: methyl-vpn-gateway-1-dynamic
      - Network: methyl-vpc-lab
      - Region: us-east4
    - Tunnel
      - Name: methyl-vpn-tunnel-1-dynamic
      - Remote Peer IP: 35.245.26.12
      - Shared secret: password
      - Routing option: Dynamic
      - Cloud router: methyl-router-lab2
    - BGP Session
      - Name: methyl-bgp-lab
      - Peer ASN: 65001
      - Cloud Router BGP IP: 169.254.0.1
      - BGP Peer IP: 169.254.0.2
 3. Create gateway 2
    - Gateaway
      - Name: methyl-vpn-gateway-1-dynamic
      - Network: methyl-vpc-lab2
      - Region: us-east4
    - Tunnel
      - Name: methyl-vpn-tunnel-2-dynamic
      - Remote Peer IP: 35.245.151.130
      - Shared secret: password
      - Routing option: Dynamic
      - Cloud router: methyl-router-lab
    - BGP Session
      - Name: methyl-bgp-lab2
      - Peer ASN: 65000
      - Cloud Router BGP IP: 169.254.0.2
      - BGP Peer IP: 169.254.0.1
 4. 
