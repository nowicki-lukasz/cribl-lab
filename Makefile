.DEFAULT_GOAL := help

help: ## Show all Makefile targets
	@echo "Cribl Lab"
	@echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

pull: ## Pull images
	@docker compose \
		-f docker-compose.yml \
		-f cribl.docker-compose.yml \
		-f minio.docker-compose.yml \
		-f redpanda.docker-compose.yml \
		-f openobserve.docker-compose.yml \
		-f splunk.docker-compose.yml \
		pull

status: ## Show status
	@docker compose ps

stop: ## Stop all containers
	@docker compose stop

down: ## Stop and remove containers, networks
	@docker compose \
		-f docker-compose.yml \
		-f cribl.docker-compose.yml \
		-f minio.docker-compose.yml \
		-f redpanda.docker-compose.yml \
		-f openobserve.docker-compose.yml \
		-f splunk.docker-compose.yml \
		down

destroy: ## Stop and remove containers, networks, volumes
	@docker compose \
		-f docker-compose.yml \
		-f cribl.docker-compose.yml \
		-f minio.docker-compose.yml \
		-f redpanda.docker-compose.yml \
		-f openobserve.docker-compose.yml \
		-f splunk.docker-compose.yml \
		down -v

run-all: ## Run all services
	@docker compose \
		-f docker-compose.yml \
		-f cribl.docker-compose.yml \
		-f minio.docker-compose.yml \
		-f redpanda.docker-compose.yml \
		-f openobserve.docker-compose.yml \
		-f splunk.docker-compose.yml \
		up -d

run-cribl: ## Run Cribl
	@docker compose -f docker-compose.yml -f cribl.docker-compose.yml up -d

run-minio: ## Run MinIO
	@docker compose -f docker-compose.yml -f minio.docker-compose.yml up -d

run-redpanda: ## Run RedPanda
	@docker compose -f docker-compose.yml -f redpanda.docker-compose.yml up -d

run-splunk: ## Run Splunk
	@docker compose -f docker-compose.yml -f splunk.docker-compose.yml up -d

run-openobserve: ## Run Open Observe
	@docker compose -f docker-compose.yml -f openobserve.docker-compose.yml up -d