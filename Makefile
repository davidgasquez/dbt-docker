IMAGE_NAME := davidgasquez/dbt:latest

.DEFAULT_GOAL := run

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: push
push:
	docker push $(IMAGE_NAME)

.PHONY: run
run:
	docker run --rm -it -v $(PWD):/dbt -v $(PWD)/sample.profiles.yml:/home/dbt/.dbt/profiles.yml --user 1000:1000 davidgasquez/dbt:latest
