# /// script
# dependencies = [
#   "rdflib"
# ]
# requires-python = ">=3.11"
# ///

from rdflib import Graph, URIRef, Literal, BNode
from rdflib.namespace import DCTERMS, DCAT, RDF
import argparse
import xml.etree.ElementTree as ET

def map_to_iso3_code(iso2code):
    return "ENG"

def map_language(source_doc, target_graph, dcat_resource):
    value = source_doc.find('/{http://datacite.org/schema/kernel-4}resource/{http://datacite.org/schema/kernel-4}language')
    iso3code = map_to_iso3_code(value)
    target_graph.add(
        dcat_resource,
        DCTERMS.language,
        URIRef(
            f"http://publications.europa.eu/resource/authority/language/{iso3code}"
        )
    ) 

def map_timeperiod(source_doc, target_graph, dcat_resource):
    value = source_doc.get_value(source_doc, '/resource/dates/date[@dataType="Collected"]')
    parts = value.split('/')
    timeperiod = BNode()
    target_graph.add(timeperiod, RDF.type, DCTERMS.PeriodOfTime)
    target_graph.add(timeperiod, DCAT.startDate,  Literal(parts[0]))    
    target_graph.add(timeperiod, DCAT.endDate,  Literal(parts[1]))            
    target_graph.add(dcat_resource, DCTERMS.temporal, timeperiod)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--input", required=True)
    args = parser.parse_args()

    input = args.input
    tree = ET.parse(input)
    
    output = Graph()
    resource = BNode()
    map_language(tree, output, resource)
    map_timeperiod(tree, output, resource)

    output.serialize(destination="output.ttl")