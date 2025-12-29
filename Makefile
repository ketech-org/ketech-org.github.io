.PHONY: serve build clean install clean-all

# Default target
.DEFAULT_GOAL := serve

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

# Clean everything including dependencies
clean-all: clean
	@echo "Removing node_modules..."
	@rm -rf node_modules
