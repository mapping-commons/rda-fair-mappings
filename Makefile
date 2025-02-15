### Makefile for the RDA FAIR Mappings project
#
# These are standard options to make Make sane:
# <http://clarkgrubb.com/makefile-style-guide#toc2>

MAKEFLAGS += --warn-undefined-variables
SHELL := bash
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := all
.DELETE_ON_ERROR:
.SUFFIXES:
.SECONDARY:


.PHONY: deploy_site
deploy_site:
	mkdocs gh-deploy --config-file mkdocs.yml

build_site:
	mkdocs build --config-file mkdocs.yml

install:
	pip install mkdocs mkdocs-material mkdocs-awesome-pages-plugin

#tmp/use_case_%.yml:
#	mkdir -p tmp
#	@bash -c 'source .env && curl -H "Accept: application/vnd.github.v3+json" \
#     -H "Authorization: token $$MY_GITHUB_TOKEN" \
#     https://api.github.com/repos/mapping-commons/rda-fair-mappings/issues/$*'


#docs/%.md: docs/%.md.in
#	jinjanator $^ > $@