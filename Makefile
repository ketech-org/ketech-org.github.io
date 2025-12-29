.PHONY: serve build clean install clean-all theme-sync theme-pin

# Default target
.DEFAULT_GOAL := serve

HUGOPLATE_MODULE ?= github.com/zeon-studio/hugoplate

# Serve the site locally
serve:
	@echo "Starting Hugo server..."
	@hugo server --bind 0.0.0.0 --baseURL http://localhost:1313/

# Build the site
build:
	@echo "Building Hugo site..."
	@hugo

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	@rm -rf public
	@rm -rf resources

# Install dependencies (Node.js dependencies for Hugoplate)
install:
	@echo "Installing dependencies..."
	@npm install

# Sync Hugoplate theme from upstream (Hugo Modules)
theme-sync:
	@echo "Updating Hugoplate module..."
	@hugo mod get -u $(HUGOPLATE_MODULE)
	@hugo mod tidy

# Pin Hugoplate to a specific tag/commit (usage: make theme-pin REF=vX.Y.Z or REF=<commit>)
theme-pin:
	@if [ -z "$$REF" ]; then echo "ERR: set REF, e.g. 'make theme-pin REF=v0.0.0-...'" >&2; exit 2; fi
	@echo "Pinning Hugoplate module to $$REF..."
	@hugo mod get $(HUGOPLATE_MODULE)@$$REF
	@hugo mod tidy

# Clean everything including dependencies
clean-all: clean
	@echo "Removing node_modules..."
	@rm -rf node_modules
