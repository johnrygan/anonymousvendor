# Variables
SERVER_DIR=./anonymousvendor_server  # <--- Change to your actual server folder name

.PHONY: generate migrate run reset help

# Generate Dart code from YAML models
generate:
	serverpod generate

# Create a new migration (forced to handle empty changes)
migrate:
	serverpod generate
	serverpod create-migration --force

# Start Docker and run the server with migrations applied
run:
	docker-compose up -d
	dart bin/main.dart --apply-migrations

# "The Nuclear Option": Wipe Docker, Volumes, and reset DB completely
reset:
	docker-compose down -v
	docker-compose up -d
	@echo "Waiting for database to wake up..."
	sleep 5
	serverpod generate
	serverpod create-migration --force
	dart bin/main.dart --apply-migrations

# Help command to see options
help:
	@echo "Serverpod Automation Commands:"
	@echo "  make generate - Runs serverpod generate"
	@echo "  make migrate  - Generates code and creates a forced migration"
	@echo "  make run      - Starts Docker and the Server"
	@echo "  make reset    - Wipes DB, Docker volumes, and starts fresh"