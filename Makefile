SHELL := /bin/bash
.SILENT:
.DEFAULT_GOAL := help

ROLE_NAME="jtprogru.sample_role"

SYS_ANSIBLE_LINT=$(shell which ansible-lint)
SYS_YAMLLINT=$(shell which yamllint)

.PHONY: lint
## Run all linters
lint: anslint ymllint

.PHONY: anslint
## Run anslint for check YAML code
anslint:
	$(SYS_ANSIBLE_LINT) --force-color --progressive .

.PHONY: ymllint
## Run yamllint for check YAML code
ymllint:
	$(SYS_YAMLLINT) --format auto --strict .

.PHONY: fmt
## Run ansible-lint for formatting all yaml files
fmt:
	$(SYS_ANSIBLE_LINT) --write --force-color .

.PHONY: test
## Run local testing for this role
test:
	@echo "TODO: Need to implement... Ooops."

.PHONY: help
## Show this help message
help:
	@echo "$$(tput bold)Available rules:$$(tput sgr0)"
	@echo
	@sed -n -e "/^## / { \
		h; \
		s/.*//; \
		:doc" \
		-e "H; \
		n; \
		s/^## //; \
		t doc" \
		-e "s/:.*//; \
		G; \
		s/\\n## /---/; \
		s/\\n/ /g; \
		p; \
	}" ${MAKEFILE_LIST} \
	| LC_ALL='C' sort --ignore-case \
	| awk -F '---' \
		-v ncol=$$(tput cols) \
		-v indent=19 \
		-v col_on="$$(tput setaf 6)" \
		-v col_off="$$(tput sgr0)" \
	'{ \
		printf "%s%*s%s ", col_on, -indent, $$1, col_off; \
		n = split($$2, words, " "); \
		line_length = ncol - indent; \
		for (i = 1; i <= n; i++) { \
			line_length -= length(words[i]) + 1; \
			if (line_length <= 0) { \
				line_length = ncol - indent - length(words[i]) - 1; \
				printf "\n%*s ", -indent, " "; \
			} \
			printf "%s ", words[i]; \
		} \
		printf "\n"; \
	}' \
	| more $(shell test $(shell uname) == Darwin && echo '--no-init --raw-control-chars')

