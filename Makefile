compose-up: ### Run docker-compose
	docker-compose up --build -d
.PHONY: compose-up

compose-down: ### Run docker-compose
	rm -rf data && \
	docker-compose down
.PHONY: compose-down

linter-golangci: ### check by golangci linter
	golangci-lint run
.PHONY: linter-golangci

run: ### Run the project
	go run main.go
.PHONY: compose-down
