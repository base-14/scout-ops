# Grizzly Workflow Makefile

RESOURCE_DIR := ./resources

pull: ## Pull alert rule groups from Grafana
	@mkdir -p $(RESOURCE_DIR)
	@grr pull --output=json --continue-on-error $(RESOURCE_DIR)

push: ## Push resources to Grafana
	@grr apply $(RESOURCE_DIR)

diff: ## Show differences between local and remote
	@grr diff $(RESOURCE_DIR)