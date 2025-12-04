.PHONY: serve build clean install

# Default target
.DEFAULT_GOAL := serve

# Serve the site locally
serve:
	@echo "Starting Jekyll server..."
	@bundle exec jekyll serve --host 0.0.0.0

# Build the site
build:
	@echo "Building Jekyll site..."
	@bundle exec jekyll build

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	@rm -rf _site
	@rm -rf .jekyll-cache
	@rm -rf .sass-cache

# Install dependencies
install:
	@echo "Installing dependencies..."
	@bundle install --path vendor/bundle

# Clean everything including dependencies
clean-all: clean
	@echo "Removing vendor directory..."
	@rm -rf vendor/bundle

