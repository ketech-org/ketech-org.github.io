.PHONY: serve

PORT ?= 1313

serve:
	@echo "Serving published site at http://localhost:$(PORT)"
	@python3 -m http.server $(PORT)
