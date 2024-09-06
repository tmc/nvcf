# Makefile for spec management.

.DELETE_ON_ERROR:
## Target to download/generate all the specs.
all: nvcf-openapi.json nvcf-postman-collection.json nvcf-openapi.yaml nvcf-go-sdk.md

nvcf-openapi.json: ## Target to download the openapi.json file from the NVIDIA public docs.
	curl -L -o $@ https://api.nvcf.nvidia.com/v3/openapi

nvcf-postman-collection.json: ## Target to download the postman collection from the NVIDIA public docs.
	curl -L -o $@ https://api.nvcf.nvidia.com/v3/postman-collection.json
	./scripts/fetch-postman-collection.sh $@

nvcf-openapi.yaml: nvcf-openapi.json ## Target to convert the openapi.json file to openapi.yaml.
	@$(MAKE) deps-yq
	cat nvcf-openapi.json | yq -P .  > nvcf-openapi.yaml

.PHONY: deps-yq
deps-yq: ## Target to install yq.
	@command -v yq >/dev/null || (echo "yq is not installed. Please install yq. (On MacOS: brew install yq)" && exit 1)

nvcf-go-sdk.md: scripts/generate-go-sdk-docs.sh ## Target to generate the go sdk docs.
	./scripts/generate-go-sdk-docs.sh > nvcf-go-sdk.md

.PHONY: help
clean-nvcf-go-sdk.md: ## Target to clean the generated nvcf-go-sdk.md file.
	rm -f nvcf-go-sdk.md

.PHONY: clean
clean: ## Target to clean the generated files.
	rm -f nvcf-openapi.json nvcf-postman-collection.json nvcf-openapi.yaml nvcf-go-sdk.md
