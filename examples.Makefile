
dependencies:
	echo "Make sure you have uv installed: https://docs.astral.sh/uv/getting-started/installation"

examples/linkml-map/sssom-prov/sssom-prov.sssom.json:
	echo $@

examples/linkml-map/sssom-prov/sssom-prov.yaml:
	linkml-tr map-data \
    -T transform/personinfo-to-agent.transform.yaml \
    -s source/personinfo.yaml \
    data/Container-001.yaml \
    -o output/Translated-001.yaml
