include .envrc

# ==================================================================================== #
# HELPERS
# ==================================================================================== #

## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: confirm
confirm:
	@echo -n 'Are you sure? [y/N] ' && read ans && [ $${ans:-N} = y ]
# ==================================================================================== #
# BUILD
# ==================================================================================== #

## build/local: build the  application and serve locally
.PHONY: build/local
build/local:
	@echo 'Building locally...'
	jekyll build && jekyll serve

# ==================================================================================== #
# DEVELOPMENT
# ==================================================================================== #

## build/deploy: deploy the application on the server 
.PHONY: build/deploy 
build/deploy:
	@echo 'Deploying...'
	bash ./deploy.sh ${GIT_REPO}
	

