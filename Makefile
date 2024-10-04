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

## build: build the cmd/api application
.PHONY: build
build:
	@echo 'Building cmd/api...'
	jeklly build

# ==================================================================================== #
# DEVELOPMENT
# ==================================================================================== #

## run/api: run the cmd/api application
.PHONY: deploy 
deploy:
	@echo 'Deploying...'
	bash ./deploy.sh ${GIT_REPO}
	

