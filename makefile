# MAKEFILE responsible for running the blrd_swarm

APP_NAME=swarm_tools

# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

run: ## Run container on port configured in `config.env`
	docker stack deploy --compose-file=docker-stack.yml portainer

stop: ## Stop and remove a running container
	docker stack rm $(APP_NAME)