IMAGE_NAME := davidgasquez/dbt:latest

.DEFAULT_GOAL := run
    
.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: run
run:
	docker run --rm --user 1000 -it -v $(PWD):/dbt $(IMAGE_NAME)
