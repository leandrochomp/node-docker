export PATH_DEPLOY=.deploy

.PHONY: .env

env-%: # Check for specific environment variables
	@ if [ "${${*}}" = "" ]; then echo "Environment variable $* not set"; exit 1;fi

.env:
	@echo "make .env"
	echo >> $(PATH_DEPLOY)/.env

shell: .env
	docker-compose -f $(PATH_DEPLOY)/docker-compose.yml run --rm node "/bin/sh"
.PHONY: shell