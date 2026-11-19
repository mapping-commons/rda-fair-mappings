.PHONY: dependencies
dependencies:
	@command -v uv >/dev/null 2>&1 || \
	  (echo "Install uv: https://docs.astral.sh/uv/getting-started/installation"; exit 1)
	uv venv .venv
	uv pip install -e ".[dev]"
	uv pip install --no-deps "ucumvert>=0.3.0"

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

examples/linkml-map/datacite-dcat/dcat-dataset.instance.yml: \
	examples/linkml-map/datacite-dcat/datacite-to-dcat-ap.transform.yml \
	examples/linkml-map/datacite-dcat/datacite.schema.yml \
	examples/linkml-map/datacite-dcat/datacite-resource.instance.yml \
	dependencies
	.venv/bin/linkml-map map-data \
		-T examples/linkml-map/datacite-dcat/datacite-to-dcat-ap.transform.yml \
		-s examples/linkml-map/datacite-dcat/datacite.schema.yml \
		--source-type Resource \
		--unrestricted-eval \
		examples/linkml-map/datacite-dcat/datacite-resource.instance.yml \
		-o $@

examples/linkml-map/datacite-dcat-date/dcat-date.instance.yml: \
	examples/linkml-map/datacite-dcat-date/datacite-dcat-date.transform.yml \
	examples/linkml-map/datacite-dcat-date/datacite.schema.yml \
	examples/linkml-map/datacite-dcat-date/datacite-date.instance.yml \
	dependencies
	.venv/bin/linkml-map map-data \
		-T examples/linkml-map/datacite-dcat-date/datacite-dcat-date.transform.yml \
		-s examples/linkml-map/datacite-dcat-date/datacite.schema.yml \
		--source-type DatasetInstance \
		--unrestricted-eval \
		examples/linkml-map/datacite-dcat-date/datacite-date.instance.yml \
		-o $@


LINKMAP_SCHEMA="https://raw.githubusercontent.com/linkml/linkml-map/refs/heads/main/src/linkml_map/datamodel/transformer_model.yaml"

tmp/linkml-map.yml:
	wget $(LINKMAP_SCHEMA) -O $@

examples/linkml-map/personinfo/personinfo.transform.jsonld: tmp/linkml-map.yml examples/linkml-map/personinfo/personinfo.transform.yml
	uv run linkml-convert -t json-ld -f yaml -C TransformationSpecification -s $^ -o $@

examples/linkml-map/personinfo/personinfo.transform.json: tmp/linkml-map.yml examples/linkml-map/personinfo/personinfo.transform.yml
	uv run linkml-convert -t json -f yaml -C TransformationSpecification -s $^ -o $@

examples/linkml-map/datacite-dcat/datacite-to-dcat-ap.transform.jsonld: tmp/linkml-map.yml examples/linkml-map/datacite-dcat/datacite-to-dcat-ap.transform.yml
	uv run linkml-convert -t json-ld -f yaml -C TransformationSpecification -s $^ -o $@

examples/linkml-map/datacite-dcat/datacite-to-dcat-ap.transform.json: tmp/linkml-map.yml examples/linkml-map/datacite-dcat/datacite-to-dcat-ap.transform.yml
	uv run linkml-convert -t json -f yaml -C TransformationSpecification -s $^ -o $@

examples/linkml-map/datacite-dcat-date/datacite-dcat-date.transform.jsonld: tmp/linkml-map.yml examples/linkml-map/datacite-dcat-date/datacite-dcat-date.transform.yml
	uv run linkml-convert -t json-ld -f yaml -C TransformationSpecification -s $^ -o $@

examples/linkml-map/datacite-dcat-date/datacite-dcat-date.transform.json: tmp/linkml-map.yml examples/linkml-map/datacite-dcat-date/datacite-dcat-date.transform.yml
	uv run linkml-convert -t json -f yaml -C TransformationSpecification -s $^ -o $@

examples/linkml-map/datacite-dcat-date/datacite-date.instance.jsonld: examples/linkml-map/datacite-dcat-date/datacite.schema.yml examples/linkml-map/datacite-dcat-date/datacite-date.instance.yml
	uv run linkml-convert -t json-ld -f yaml -C DatasetInstance -s $^ -o $@

examples/linkml-map/datacite-dcat-date/datacite-date.instance.json: examples/linkml-map/datacite-dcat-date/datacite.schema.yml examples/linkml-map/datacite-dcat-date/datacite-date.instance.yml
	uv run linkml-convert -t json -f yaml -C DatasetInstance -s $^ -o $@

examples/linkml-map/datacite-dcat-date/datacite-date.instance.ttl: examples/linkml-map/datacite-dcat-date/datacite.schema.yml examples/linkml-map/datacite-dcat-date/datacite-date.instance.yml
	uv run linkml-convert -t ttl -f yaml -C DatasetInstance -s $^ -o $@

examples/linkml-map/datacite-dcat-date/dcat-date.instance.jsonld: examples/linkml-map/datacite-dcat-date/dcat.schema.yml examples/linkml-map/datacite-dcat-date/dcat-date.instance.yml
	uv run linkml-convert -t json-ld -f yaml -C DatasetMetadata -s $^ -o $@

examples/linkml-map/datacite-dcat-date/dcat-date.instance.json: examples/linkml-map/datacite-dcat-date/dcat.schema.yml examples/linkml-map/datacite-dcat-date/dcat-date.instance.yml
	uv run linkml-convert -t json -f yaml -C DatasetMetadata -s $^ -o $@

examples/linkml-map/datacite-dcat-date/dcat-date.instance.ttl: examples/linkml-map/datacite-dcat-date/dcat.schema.yml examples/linkml-map/datacite-dcat-date/dcat-date.instance.yml
	uv run linkml-convert -t ttl -f yaml -C DatasetMetadata -s $^ -o $@


.PHONY: serialisations
serialisations: \
	examples/linkml-map/personinfo/personinfo.transform.jsonld \
	examples/linkml-map/personinfo/personinfo.transform.json \
	examples/linkml-map/datacite-dcat/datacite-to-dcat-ap.transform.jsonld \
	examples/linkml-map/datacite-dcat/datacite-to-dcat-ap.transform.json \
	examples/linkml-map/datacite-dcat-date/datacite-dcat-date.transform.jsonld \
	examples/linkml-map/datacite-dcat-date/datacite-dcat-date.transform.json \
	examples/linkml-map/datacite-dcat-date/datacite-date.instance.jsonld \
	examples/linkml-map/datacite-dcat-date/datacite-date.instance.json \
	examples/linkml-map/datacite-dcat-date/datacite-date.instance.ttl \
	examples/linkml-map/datacite-dcat-date/dcat-date.instance.jsonld \
	examples/linkml-map/datacite-dcat-date/dcat-date.instance.json \
	examples/linkml-map/datacite-dcat-date/dcat-date.instance.ttl | dependencies

.PHONY: examples
examples: \
	examples/linkml-map/personinfo/agent.instance.yml \
	examples/linkml-map/datacite-dcat-date/dcat-date.instance.yml

# The SSSOM and LinkML-Map to FAIR Mappings Schema transformations live in
# https://github.com/mapping-commons/fair-mappings-schema; run them with
# `fair-mappings parse -I sssom|linkml_map`.

download-paper:
	mkdir -p tmp
	wget "https://docs.google.com/document/d/1zJemI2vLpd5P7WeMsRNj-aNFpAW-x2cdFu_8XYk8lz0/export?format=md" -O tmp/paper_fair_raw.md
