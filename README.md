# Docker Image for DBT

A Docker image for [dbt (data build tool)](https://github.com/fishtown-analytics/dbt).

## Requirements

Before running `dbt`, you'll need a profile properly file configured. Fishtown Analytics provides a [sample template](https://github.com/fishtown-analytics/dbt/blob/development/sample.profiles.yml) you might find useful.

## Getting Started

You can run the Dockerized `dbt` command excuting the following order:

```
docker run --rm -it \
    -v $PWD:/dbt \
    -v /path/to/your/profiles.yml:/home/dbt/.dbt/profiles.yml \
    --user 1000:1000 \
    davidgasquez/dbt:latest
```

You can also create an alias to execute the dockerized `dbt` command:

```
alias ddbt='docker run --rm -it \
    -v $PWD:/dbt \
    -v /path/to/your/profiles.yml:/home/dbt/.dbt/profiles.yml \
    --user 1000:1000 \
    davidgasquez/dbt:latest'
```
