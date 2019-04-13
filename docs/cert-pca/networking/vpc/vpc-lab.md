# VPC

## Create a firewall rule with CLI
 1. Create the firewall rule
```bash
gcloud compute firewall-rules create methyl-fwr-vnc \
--description="Methyl firewall rule allowing VNC" \
--direction=INGRESS \
--priority=1000 \
--network=methyl-vpc-lab \
--action=ALLOW \
--rules=tcp:5900 \
--source-ranges=0.0.0.0/0 \
--target-tags=tag-lab
```

## Install VNC on an instance
```bash
sudo yum groupinstance "GNOME desktop"
sudo yum install tigervnc
vncserver
  # Enter a password for the vnc server
```

## Create a Shared VPC
 1. Create a new host and two service projects
    1. Project selector > New Project
    2. Create projects
       - methyl-shared
       - methyl-lab-blue
       - methyl-lab-green
 2. Grant permissions to manage Shared VPC
    1. IAM & admin > IAM
    2. Add and Save
       - Member: methyl-admin
       - Role: Compute Engine > Compute Shared VPC Admin
 3. Prepare host project
    1. Compute Engine
    2. Enable API
    3. Create a custom VPC methyl-vpc-shared
    4. Create three subnets in us-east4 (methyl-subnet-shared-us-east4-r1)
 4. Prepare service projects
    1. VPC Network
    2. Enable billing > Choose billing: methyl-billingaccount-signup
 5. Create Shared VPC
    1. VPC Network > Shared VPC
    2. Setup Shared VPC
    3. Choose a project: methyl-shared
    4. Enable host project > Save & continue
    5. Sharing mode: Individual subnets
    6. Give permissions > Attach service project: methyl-dev
    7. VPC Network > Firewall rules
    8. Create a firewall rule for SSH,RDP: methyl-fwr-shared-base-admin
 6. Create an instance in methyl-dev hosted on the methyl-vpc-shared
    1. Compute Engine > VM Instances
    2. Name: methyl-instance-dev-sharedvpc
    3. Management, ... > Networking > Network shared with me
       methyl-subnet-shared-us-east4-r1
    4. Create
