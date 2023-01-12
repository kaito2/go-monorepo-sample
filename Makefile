.PHONY: build
build:
	$(if $(S), \
	@echo "SERVICE="$(S); \
	docker build -t $(S) . --build-arg service=$(S), \
	@echo "usage: make build S={SERVICE}")

.PHONY: test-all
test-all:
	make test S=app1
	make test S=app2

.PHONY: test
test:
	$(if $(S), \
	@echo "SERVICE="$(S); \
	cd $(S); \
	go test ./..., \
	@echo "usage: make test S={SERVICE}")