# CRIBL-LAB

This repository serves as learning playground for exploring different data processing technologies.
It provides a configuration to set up local virtual laboratory environment designed for testing, learning and experimentation in a controlled, non-production, ephemeral setting.

## Getting Started

1. Clone this repository: `git clone https://github.com/nowicki-lukasz/cribl-lab.git`
2. Navigate to the `cribl-lab` directory.
3. Run `docker-compose up -d --build` to start the environment.
4. Access web interfaces

| Application | URL | Username | Password |
|-|-|-|-|
| Cribl | http://localhost:19000 | admin | admin |
| Splunk | http://localhost:8000 | admin | superadmin |
| MinIO | http://localhost:9001 | minioadmin | minioadmin |
| RedPanda | http://localhost:8080 | N/A | N/A |
| OpenObserve | http://localhost:5080 | root@example.com | Complexpass#123 |

## Cribl source/destination configuration
| Application | URL | Remarks |
|-|-|-|
| Splunk HEC | https://splunk:8088/services/collector/event | Disable `Validate server certs` option
| MinIO | http://minio:9000 | |
| RedPanda| redpanda-0:9092 </br> redpanda-1:9092 </br> redpanda-2:9092
| OpenObserve | openobserve:5080 </br> openobserve:5081
