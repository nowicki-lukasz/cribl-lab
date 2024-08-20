# CRIBL-LAB

## Web User Interfaces
| Application | URL | Username | Password |
|-|-|-|-|
| Cribl | http://localhost:1900 | admin | admin |
| Splunk | http://localhost:8000 | admin | superadmin |
| MinIO | http://localhost:9001 | minioadmin | minioadmin |
| RedPanda | http://localhost:8080 | N/A | N/A |

## Cribl source/destination configuration
| Application | URL | Remarks |
|-|-|-|
| Splunk HEC | https://splunk:8088/services/collector/event | Disable `Validate server certs` option
| MinIO | http://minio:9000 | |
| RedPanda| redpanda-0:9092 </br> redpanda-1:9092 </br> redpanda-2:9092