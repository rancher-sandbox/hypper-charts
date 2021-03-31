
.PHONY: build
build:
	@echo $(dir $(shell find charts -maxdepth 5 -type f -name 'Chart.yaml')) | sort | uniq | xargs helm package -d released
	helm repo index released