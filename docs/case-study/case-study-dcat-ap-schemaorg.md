<!-- DO NOT EDIT: This file is auto-generated. Any changes will be overwritten. -->

<span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Semantic interoperability</span> <span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Integration</span> <span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Discovery</span> <span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Transformation</span> 

!!! info "DCAT-AP to Schema.org Case Study Infobox"

    - **Author:** Philip Strömert  (@StroemPhi)
    - **Last updated:** 2025-07-17  
    - **Mapping Type:** ![Mapping Type](https://img.shields.io/badge/Schema Mapping-blue) 
    - **Status of this case study:** ![Status](https://img.shields.io/badge/Draft-yellow)

Mapping DCAT-AP to Schema.org.

### Summary

A [draft](https://ec-jrc.github.io/dcat-ap-to-schema-org/) meant to report work in progress concerning an exercise, carried out at the [Joint Research Centre of the European Commission](https://ec.europa.eu/jrc/) (Unit B.6), for mapping the relevant terms from the DCAT Application Profile for European Data Portals (DCAT-AP) to the Schema.org vocabulary.

### Domain

domain-agnostic

### Use case category

- Semantic interoperability (shared understanding of data across multiple systems)
- Integration (Connecting data across disparate resources)
- Transformation (translating source data into a target schema)
- Discovery (finding related data across resources)

### Purpose of the mapping

- To identify how to create a DCAT-AP-compliant representation of Schema.org metadata, in order to enable their sharing across DCAT-AP-enabled data catalogues.
- To identify how to create a Schema.org-compliant representation of DCAT-AP metadata, in order to enhance their discoverability on the Web.

### Type of mapped resources

Metadata about datasets.

### Links to an existing mappings

The mappings are [expressed as SPARQL construct queries](https://github.com/ec-jrc/dcat-ap-to-schema-org/tree/master/sparql) against the DCAT-AP model (constructing schema.org corresponding metadata).

### Tools used for creating the mapping

- [SPARQL construct queries](https://ec-jrc.github.io/dcat-ap-to-schema-org/#formal-definition-sparql)

### Type of mapping relations

- entity mappings - one to many & many-to-one
- schema mappings - instances of DCAT-AP to schema.org.

See also [notes about alignment issues](https://ec-jrc.github.io/dcat-ap-to-schema-org/#alignment-issues).

### Examples (samples) of different types of mapping implementations

```sparql
PREFIX dct:    <http://purl.org/dc/terms/>
PREFIX foaf:   <http://xmlns.com/foaf/0.1/>
PREFIX locn:   <http://www.w3.org/ns/locn#>
PREFIX org:    <http://www.w3.org/ns/org#>
PREFIX schema: <http://schema.org/>

CONSTRUCT {
  ?Agent 
    a ?schemaPerson ;
    a ?schemaOrganization ;
    schema:name ?name ;
#    schema:?? ?AgentType ;
    schema:address ?AgentAddress ;
    schema:memberOf ?Affiliation ;
    schema:email ?email ;
    schema:url ?workplaceHomepage ;
    schema:telephone ?phone
} WHERE {
  OPTIONAL { ?Agent a foaf:Agent . }
  OPTIONAL { ?Agent a foaf:Person BIND(schema:Person AS ?schemaPerson) . }
  OPTIONAL { ?Agent a foaf:Organization BIND(schema:Organization AS ?schemaOrganization) . }
  OPTIONAL { ?Agent foaf:name ?name . }
#  OPTIONAL { ?Agent dct:type ?AgentType . }
  OPTIONAL { ?Agent locn:address ?AgentAddress . }
  OPTIONAL { ?Agent org:memberOf ?Affiliation . }
  OPTIONAL { ?Agent foaf:mbox ?email . }
  OPTIONAL { ?Agent foaf:workplaceHomepage ?workplaceHomepage . }
  OPTIONAL { ?Agent foaf:phone ?phone . }
}
```