VERSION = 0.12.0
IMAGE_NAME := davidgasquez/dbt:$(VERSION)

.DEFAULT_GOAL := version

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: push
push:
	docker push $(IMAGE_NAME)

.PHONY: dev
dev:
	docker run --rm -it $(IMAGE_NAME) bash

.PHONY: version
version:
	docker run --rm -it $(IMAGE_NAME) dbt --version
