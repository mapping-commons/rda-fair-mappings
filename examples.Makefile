.PHONY: dependencies
dependencies:
	@command -v uv >/dev/null 2>&1 || \
	  (echo "Install uv: https://docs.astral.sh/uv/getting-started/installation"; exit 1)
	uv venv .venv
	uv pip install linkml-map jinja2

examples/linkml-map/personinfo/agent.instance.yml: \
	examples/linkml-map/personinfo/personinfo.transform.yml \
	examples/linkml-map/personinfo/personinfo.schema.yml \
	examples/linkml-map/personinfo/personinfo.instance.yaml \
	dependencies
	.venv/bin/linkml-map map-data \
		-T examples/linkml-map/personinfo/personinfo.transform.yml \
		-s examples/linkml-map/personinfo/personinfo.schema.yml \
		--source-type Person \
		examples/linkml-map/personinfo/personinfo.instance.yaml \
		-o $@

.PHONY: examples

examples: examples/linkml-map/personinfo/agent.instance.yml
