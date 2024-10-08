# CRIBL-LAB

This repository serves as learning playground for exploring different data processing technologies.
It provides a configuration to set up local virtual laboratory environment designed for testing, learning and experimentation in a controlled, non-production, ephemeral setting.

## Getting Started

1. Clone this repository: `git clone https://github.com/nowicki-lukasz/cribl-lab.git`
2. Navigate to the `cribl-lab` directory.
3. Run `make pull` to pull all images.
4. Run `make run-all` to start all services.
5. Run `make stop` to stop all services.
6. Run `make down` to stop and remove containers and networks.
7. Run `make destroy` to stop and remove containers, networks and volumes.

| Application | URL | Username | Password |
|-|-|-|-|
| Cribl | http://localhost:19000 | admin | admin |
| Splunk | http://localhost:8000 | admin | superadmin |
| MinIO | http://localhost:9001 | minioadmin | minioadmin |
| RedPanda | http://localhost:8080 | N/A | N/A |
| OpenObserve | http://localhost:5080 | root@example.com | Complexpass#123 |

## Services

### Cribl Leader (aka. Master) node
This instance serves as the central point for monitoring and configuring Worker nodes.

### Cribl Worker node (x2)
These worker nodes are used to distribute the load of data collection, data ingestion and data processing. Their configuration is fully managed by the **Cribl Leader** node.

### Splunk
**Splunk** is used to collect, index, and analyze logs and metrics.

### MinIO
**MinIO** is used as a replacement for traditional distributed storage solutions, providing a scalable and high-performance object store. By leveraging the S3 API, it allows for seamless integration with wide range of applications that rely on AWS S3.

### Redpanda (x3)
**Redpanda** is a cloud-native streaming platform that provides a drop-in replacement for Apache Kafka.

### Redpanda Console
Intuitive UI for monitoring, managing, and administrating Redpanda cluster.

### OpenObserve
**OpenObserve** is an opensource lightweight APM (Application Performance Monitoring) solution.

---
## Cribl source/destination configuration
| Application | URL | Remarks |
|-|-|-|
| Splunk HEC | https://splunk:8088/services/collector/event | Disable `Validate server certs` option
| MinIO | http://minio:9000 | |
| RedPanda| redpanda-0:9092 </br> redpanda-1:9092 </br> redpanda-2:9092
| OpenObserve | openobserve:5080 </br> openobserve:5081
