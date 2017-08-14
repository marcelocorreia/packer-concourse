create-keys:
	./base/create-concourse-keys.sh
.PHONY: create-keys

delete-keys:
	echo "Removing Concourse keys"
	rm -rf ./keys/
.PHONY: delete-keys

generate-compose:
	./base/generate-compose.sh
.PHONY: generate-compose

up: create-keys generate-compose
	docker-compose up -d
.PHONY: up

down:
	docker-compose down
.PHONY: down

logs:
	docker-compose logs -f
.PHONY: logs