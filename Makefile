IMAGE_NAME := davidgasquez/dbt:latest

.DEFAULT_GOAL := version

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: push
push:
	docker push $(IMAGE_NAME)

.PHONY: version
version:
	docker run --rm -it -v $(PWD):/dbt -v $(HOME)/.dbt_profiles.yml:/home/dbt/.dbt/profiles.yml --user 1000:1000 davidgasquez/dbt:latest dbt --version
