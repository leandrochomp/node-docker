export PATH_DEPLOY=.deploy

.PHONY: .env

env-%: # Check for specific environment variables
	@ if [ "${${*}}" = "" ]; then echo "Environment variable $* not set"; exit 1;fi

shell:
	docker-compose -f $(PATH_DEPLOY)/docker-compose.yml run --rm -p 8080:8080 web "/bin/sh"
.PHONY: shell