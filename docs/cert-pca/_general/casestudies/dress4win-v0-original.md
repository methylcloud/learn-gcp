# [Dress4Win Case Study][1]

## Company Overview
 - Dress4Win is a web-based company that helps their users organize and manage their personal wardrobe using a web app and mobile application.
 - The company also cultivates an active social network that connects their users with designers and retailers.
 - They monetize their services through advertising, e-commerce, referrals, and a freemium app model.
 - The application has grown from a few servers in the founder’s garage to several hundred servers and appliances in a colocated data center.
 - However, the capacity of their infrastructure is now insufficient for the application’s rapid growth.
 - Because of this growth and the company’s desire to innovate faster, Dress4Win is committing to a full migration to a public cloud.

## Solution Concept
 - For the first phase of their migration to the cloud, Dress4Win is moving their development and test environments.
 - They are also building a disaster recovery site, because their current infrastructure is at a single location.
 - They are not sure which components of their architecture they can migrate as is and which components they need to change before migrating them.

## Existing Technical Environment
The Dress4Win application is served out of a single data center location. All servers run Ubuntu LTS v16.04.

Databases:
 - MySQL. 1 server for user data, inventory, static data,
   - MySQL 5.8
   - 8 core CPUs
   - 128 GB of RAM
   - 2x 5 TB HDD (RAID 1)
   - Redis 3 server cluster for metadata, social graph, caching. Each server is:
   - Redis 3.2
   - 4 core CPUs
   - 32GB of RAM

Compute:
 - 40 Web Application servers providing micro-services based APIs and static content.
   - Tomcat - Java
   - Nginx
   - 4 core CPUs
   - 32 GB of RAM
 - 20 Apache Hadoop/Spark servers:
   - Data analysis
   - Real-time trending calculations
   - 8 core CPUs
   - 128 GB of RAM
   - 4x 5 TB HDD (RAID 1)
 - 3 RabbitMQ servers for messaging, social notifications, and events:
   - 8 core CPUs
   - 32GB of RAM
 - Miscellaneous servers:
   - Jenkins, monitoring, bastion hosts, security scanners
   - 8 core CPUs
   - 32GB of RAM
 - Storage appliances:
   - iSCSI for VM hosts
   - Fiber channel SAN - MySQL databases
     - 1 PB total storage; 400 TB available
   - NAS - image storage, logs, backups
     - 100 TB total storage; 35 TB available

## Business Requirements
 - Build a reliable and reproducible environment with scaled parity of production.
 - Improve security by defining and adhering to a set of security and Identity and Access Management (IAM) best practices for cloud.
 - Improve business agility and speed of innovation through rapid provisioning of new resources.
 - Analyze and optimize architecture for performance in the cloud.

## Technical Requirements
 - Easily create non-production environments in the cloud.
 - Implement an automation framework for provisioning resources in cloud.
 - Implement a continuous deployment process for deploying applications to the on-premises datacenter or cloud.
 - Support failover of the production environment to cloud during an emergency.
 - Encrypt data on the wire and at rest.
 - Support multiple private connections between the production data center and cloud environment.

## Executive Statement
 - Our investors are concerned about our ability to scale and contain costs with our current infrastructure.
 - They are also concerned that a competitor could use a public cloud platform to offset their up-front investment and free them to focus on developing better features.
 - Our traffic patterns are highest in the mornings and weekend evenings; during other times, 80% of our capacity is sitting idle.
 - Our capital expenditure is now exceeding our quarterly projections.
 - Migrating to the cloud will likely cause an initial increase in spending, but we expect to fully transition before our next hardware refresh cycle.
 - Our total cost of ownership (TCO) analysis over the next 5 years for a public cloud strategy achieves a cost reduction between 30% and 50% over our current model.

[1]: https://cloud.google.com/certification/guides/cloud-architect/casestudy-dress4win-rev2
