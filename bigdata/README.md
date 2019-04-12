# Big Data
## What is Big Data?
Big Data refers to datasets (Terrabytes to Petabytes) and needs that would normally to be too large to be stored and analyzed by regular storage systems (SQL, NoSQL).
It is usually coming from business structured data, Internet of things (IoT), archives.
Big Data is becoming a competitive advantage to better understand the business context.

## Why the cloud is the best option for Big Data needs?
Cloud providers can provide lower cost, on-demand solutions also reducing the management overhead.

## Why is GCP well-suited for Big Data?
Google has been handling big data since the beginning of search and does it well. The company pioneered some of the forefront practices and technology (MapReduce, BigQuery).

## What is the difference between batch and stream?
 - Batch processing is when a system handles one time a large amount of data at once
 - Stream processing is when a system continuously handles data flowing all the time.

## What are GCP Big Data offering?
 - BigQuery
 - Dataflow
 - Dataproc
 - Datalab
 - Dataprep
 - Pub/Sub

## What is Bigquery
 - Fully managed (serverless) solution to store and analyze with SQL large scale data sets.
 - It provides fast and easy to analyze large datasets

## What is Dataflow?
Fully managed Data pipeline to ingest data. It supports both batch and stream processing.

## What is Dataproc?
Fully managed solution to run Hadoop or Spark clusters.
It can uses preemptible (short lived) instances to reduce processing costs.
It is good for migrating existing Hadoop jobs in the cloud or run jobs requiring Hadoop/Spark libraries.

## What is Datalab?
Datalab is a web tool deployed on a GCE machine to conduct analysis, machine learning experiments.

## What is Dataprep?
Dataprep integrates with Dataflow and is used to visualize and clean the data being ingested.

## What is Pub/Sub
Pub/Sub is a middleware solution to handle Message Queue (MQ).
 - Messages are organized in topics used for subscription and publication
 - Used as a Message Queue (MQ) to decouple applications by using asynchronous messages

## What is the Big data lifecycle?
 1. Ingestion of the data
 2. Store the data in a storage service
 3. Process and clean the data
 4. Analyze and visualize the data

## What is the data lifecycle ingest phase?
  - Acquire data from a source: IoT, Streaming, GCP services
  - Source could be either streaming or batch
  - Pub/Sub can handle millions of events per seconds, making it well suited for streaming
  - Strict message ordering would require Dataflow

## What is the data lifecycle store phase?
 - unstructured with Cloud Storage
 - Analytics with BigQuery
 - NoSQL with Datastore (or BigTable if need of low-latency)
 - SQL with Cloud SQL in single zone (or Spanner if need horizontal scaling)

## What is the data lifecycle process phase?
 - Analyze the data
 - Dataproc for Hadoop analysis
 - Dataflow is an ETL data processing pipeline
 - Dataprep uses a UI to clean/visualize the data

## What is the data lifecycle analyze phase?
 - Provide the analyzed data to the user for consumption
 - Visualize the data with filters and UI elements (Charts, Table, stats)

## When to use Dataflow?
 - Dataflow is useful when there is a need for a transform process
 - Otherwise, the data could be sent directly from ingestion/storage to analysis.

## What is the lifecycle of a batch scenario?
 - Cloud Storage stores the data
 - Options
   - Dataflow processes the data
   - Data is processed in Bigtable as NoSQL
   - Data is processed in Bigtable, then in Dataproc Hadoop clusters
 - Bigquery is used to store/analyze the data
 - Datalab/Tableau is used to visualize the data

## What is the lifecycle of a stream scenario?
 - Stream (IoT events)
   - Pub/Sub receives messages from devices
   - Dataflow processes the data
   - Bigquery is used to store/analyze the data
   - Other tools (Datalab, Tableau) can visualize the data

## What is Machine Learning?
Artificial Intelligence method to train systems to understand the data and makes predictions.

## What are the applications of Machine Learning?
 - Predictions based on existing data
 - Recognition of objects and patterns in medias
 - User interaction with speech and audio recognition

## What are Google Machine Learning solutions?
Google has and edge and expertise in AI and ML and built some of the most advanced solutions.
 - TensorFlow is a framework and engine to train deep learning models
 - Machine Learning Engine is a managed solution to create and train models with TensorFlow
 - Cloud Vision API offers pretrained model to recognize objects in pictures/videos
 - Cloud Natural Language API to extract information, sentiment from corpus of text
 - Cloud Translate API to identify and translate language
 - Cloud Speech API provide Speech To Text (STT) and Text To Speech (TTS)
 - Cloud Video Intelligence provides video analysis and object recognition
