SHELL := /bin/bash

.PHONY: help
help: ##  show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%s\033|%s\n", $$1, $$2}' \
		| column -t -s '|'

run:
    @python ./src/main.py