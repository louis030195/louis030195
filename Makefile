
GCLOUD_PROJECT := $(shell gcloud config list --format 'value(core.project)' 2>/dev/null)
REGION := us-central1

push:
	git add .
	git commit -m "🙈 $(shell date +%Y-%m-%d_%H:%M:%S) 🙈"
	git push -f

deps:
	@which gcloud >/dev/null || { echo "gcloud not found in PATH"; exit 1; }
# @which firebase >/dev/null || { echo "firebase not found in PATH"; exit 1; }
	@which python3 >/dev/null || { echo "python3 not found in PATH"; exit 1; }
	@which pip3 >/dev/null || { echo "pip3 not found in PATH"; exit 1; }


fn/insight/deploy: deps ## [Local development] Deploy the "public" function.
# TODO: custom domain name
# firebase use ${GCLOUD_PROJECT}
# firebase deploy --only hosting
	gcloud functions deploy insight \
		--runtime python39 \
		--trigger-http \
		--allow-unauthenticated \
		--project ${GCLOUD_PROJECT} \
		--timeout 120s \
		--source ./functions/insight \
		--region ${REGION} \
		--memory 512MB

.PHONY: help

help: # Run `make help` to get help on the make commands
	@grep -E '^[0-9a-zA-Z\/_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
