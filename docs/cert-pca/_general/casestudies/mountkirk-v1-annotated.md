# [Mountkirk case study][1]

## Company Overview
 - Mountkirk Games makes online, session-based, multiplayer games for mobile platforms. They build all of their games using some server-side integration. Historically, they have used cloud providers to lease physical servers.
 - Due to the unexpected popularity of some of their games, they have had problems scaling their global audience, application servers, MySQL databases **[Cloud SQL/Spanner]**, and analytics tools **[BigQuery]**.
 - Their current model is to write game statistics to files and send them through an ETL tool that loads them into a centralized MySQL database for reporting **[Datastore]**.

## Solution Concept
 - Mountkirk Games is building a new game, which they expect to be very popular **[Global, Scaling]**.
 - They plan to deploy the game’s backend on Google Compute Engine **[GCE vs GAE/GKE]** so they can capture streaming metrics **[Dataflow]**, run intensive analytics **[BigQuery]**, and take advantage of its autoscaling server environment and integrate with a managed NoSQL database **[Datastore]**.

## Business Requirements
  - Increase to a global footprint
  - Improve uptime - downtime is loss of players **[Load Balancing/Autoscaling/Canary]**
  - Increase efficiency of the cloud resources we use **[Autoscaling, ~~GKE/GCE~~ because of Linux OS requirement]**
  - Reduce latency to all customers **[~~CDN~~ not much static file to distribute, Global Load Balancing]**

## Technical Requirements
Requirements for Game Backend Platform
 - Dynamically scale up or down based on game activity. **[Autoscaling, Instance Group]**
 - Connect to a transactional database service to manage user profiles and game state **[~~Spanner~~, Datastore]**.
 - Store game activity in a timeseries database service for future analysis **[~~Datastore~~, BigTable or BigQuery]**.
 - As the system scales, ensure that data is not lost due to processing backlogs **[~~Pub/Sub~~, Dataflow]**.
 - Run hardened Linux distro **[GCE]**.

Requirements for Game Analytics Platform
 - Dynamically scale up or down based on game activity **[Autoscaling]**.
 - Process incoming data on the fly directly from the game servers **[Pub/Sub & Dataflow]**.
 - Process data that arrives late because of slow mobile networks **[~~Pub/Sub~~ Dataflow for data ingestion even if out of order ]**.
 - Allow queries to access at least 10 TB of historical data **[BigQuery]**.
 - Process files that are regularly uploaded by users’ mobile devices **[Cloud Storage]**.

## Executive Statement
 - Our last successful game did not scale well with our previous cloud provider, resulting in lower user adoption and affecting the game’s reputation.
 - Our investors want more key performance indicators (KPIs) to evaluate the speed and stability of the game, as well as other metrics that provide deeper insight into usage patterns so we can adapt the game to target users.
 - Additionally, our current technology stack cannot provide the scale we need, so we want to replace MySQL and move to an environment that provides autoscaling, low latency load balancing, and frees us up from managing physical servers.

[1]: https://cloud.google.com/certification/guides/cloud-architect/casestudy-mountkirkgames-rev2
