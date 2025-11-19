# Default target shows help
.PHONY: help
help:                       ## Show available commands
	@grep -E '^[a-zA-Z_-]+:.*?## ' Makefile | sed 's/:.*## / - /'

.PHONY: up
up:                         ## Start the dev stack (web, api, db, cache)
	docker compose up -d --build

.PHONY: down
down:                       ## Stop and remove containers (keeps DB volume)
	docker compose down

.PHONY: logs
logs:                       ## Tail logs from all services
	docker compose logs -f

.PHONY: reset-db
reset-db:                   ## Drops Postgres data volume (destructive)
	docker compose down
	docker volume rm qtrader_pgdata || true
	docker compose up -d --build
