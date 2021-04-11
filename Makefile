IMAGE := slok/kube-code-generator:latest
DIRECTORY := $(PWD)
PROJECT_PACKAGE := "github.com/AlexsJones/custom-resource-definition-example/pkg"
DEPS_CMD := go mod tidy

all:
	docker run -it --rm \
	-v $(DIRECTORY):/go/src/$(PROJECT_PACKAGE) \
	-e PROJECT_PACKAGE=$(PROJECT_PACKAGE) \
	-e CLIENT_GENERATOR_OUT=$(PROJECT_PACKAGE)/client \
	-e APIS_ROOT=$(PROJECT_PACKAGE)/apis \
	-e GROUPS_VERSION="metadata:v1" \
	-e GENERATION_TARGETS="deepcopy,client" \
	$(IMAGE)