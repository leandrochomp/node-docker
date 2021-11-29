export PATH_DEPLOY=.deploy

.PHONY: .env

env-%: # Check for specific environment variables
	@ if [ "${${*}}" = "" ]; then echo "Environment variable $* not set"; exit 1;fi

# Creates image node-docker:latest from Dockerfile
build:
	docker build -t node-docker .
.PHONY: build

# Create package.json
init:
	docker-compose -f $(PATH_DEPLOY)/docker-compose.yml run --rm server 'yarn init -y'
.PHONY: init

# Install express packages
install:
	docker-compose -f $(PATH_DEPLOY)/docker-compose.yml run --rm server 'yarn add express'
.PHONY: install

start:
	docker-compose -f $(PATH_DEPLOY)/docker-compose.yml run --rm -p 8080:3000 server 'yarn start'
.PHONY: start

# just in case need to run some debug inside of the docker
shell:
	docker-compose -f $(PATH_DEPLOY)/docker-compose.yml run shell
.PHONY: shell