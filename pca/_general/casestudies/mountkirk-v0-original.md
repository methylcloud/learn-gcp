# [Mountkirk case study][1]

## Company Overview
 - Mountkirk Games makes online, session-based, multiplayer games for mobile platforms. They build all of their games using some server-side integration. Historically, they have used cloud providers to lease physical servers.
 - Due to the unexpected popularity of some of their games, they have had problems scaling their global audience, application servers, MySQL databases, and analytics tools.
 - Their current model is to write game statistics to files and send them through an ETL tool that loads them into a centralized MySQL database for reporting.

## Solution Concept
 - Mountkirk Games is building a new game, which they expect to be very popular.
 - They plan to deploy the game’s backend on Google Compute Engine so they can capture streaming metrics, run intensive analytics, and take advantage of its autoscaling server environment and integrate with a managed NoSQL database.

## Business Requirements
  - Increase to a global footprint
  - Improve uptime - downtime is loss of players
  - Increase efficiency of the cloud resources we use
  - Reduce latency to all customers

## Technical Requirements
Requirements for Game Backend Platform
 - Dynamically scale up or down based on game activity.
 - Connect to a transactional database service to manage user profiles and game state.
 - Store game activity in a timeseries database service for future analysis.
 - As the system scales, ensure that data is not lost due to processing backlogs.
 - Run hardened Linux distro.

Requirements for Game Analytics Platform
 - Dynamically scale up or down based on game activity.
 - Process incoming data on the fly directly from the game servers.
 - Process data that arrives late because of slow mobile networks.
 - Allow queries to access at least 10 TB of historical data.
 - Process files that are regularly uploaded by users’ mobile devices.

## Executive Statement
 - Our last successful game did not scale well with our previous cloud provider, resulting in lower user adoption and affecting the game’s reputation.
 - Our investors want more key performance indicators (KPIs) to evaluate the speed and stability of the game, as well as other metrics that provide deeper insight into usage patterns so we can adapt the game to target users.
 - Additionally, our current technology stack cannot provide the scale we need, so we want to replace MySQL and move to an environment that provides autoscaling, low latency load balancing, and frees us up from managing physical servers.

[1]: https://cloud.google.com/certification/guides/cloud-architect/casestudy-mountkirkgames-rev2
