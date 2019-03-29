NAME:=faas-grafana
VERSION:=5.1.0
DOCKER_REPOSITORY:=netmanito
DOCKER_IMAGE_NAME:=$(DOCKER_REPOSITORY)/$(NAME)

.PHONY: build
build:
	@cd grafana ; docker build -t $(DOCKER_IMAGE_NAME):$(VERSION) .

.PHONY: push
push:
	@docker push $(DOCKER_IMAGE_NAME):$(VERSION)
