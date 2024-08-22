# CRIBL-LAB

## Web User Interfaces
| Application | URL | Username | Password |
|-|-|-|-|
| Cribl | http://localhost:1900 | admin | admin |
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

## Usage
### Download all required images
```sh
$ export DOCKER_DEFAULT_PLATFORM=linux/amd64 # required only on Apple silicon
$ docker compose pull # Alternative: podman compose pull
```

### Run stack
```sh
$ docker compose up # Alternative: podman compose up
```