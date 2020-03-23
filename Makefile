VERSION = 0.16.0
IMAGE_NAME := davidgasquez/dbt:$(VERSION)
IMAGE_NAME_LATEST := davidgasquez/dbt:latest

.DEFAULT_GOAL := version

.PHONY: build
build:
	docker build --no-cache -t $(IMAGE_NAME) -t $(IMAGE_NAME_LATEST) .

.PHONY: push
push:
	docker push $(IMAGE_NAME)
	docker push $(IMAGE_NAME_LATEST)

.PHONY: dev
dev:
	docker run --rm -it $(IMAGE_NAME) bash

.PHONY: version
version:
	docker run --rm -it $(IMAGE_NAME) dbt --version
