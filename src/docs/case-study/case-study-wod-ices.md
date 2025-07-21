---
title: "World Ocean Database (WOD) terms (unpublished) mappings to NVS Case Study"
author: "Alexandra Kokkinaki"
author_github: "@alko-k"
date: "2025-06-18"
tags:
  - Semantic interoperability
category: "Case Studies"
mapping_type: "Entity Mapping"
status: "Draft"
---
  
Map labels (string) of platform (mainly ship) names appearing in metadata documents from the [World Ocean Database](https://www.ncei.noaa.gov/products/world-ocean-database) to ICES shipcodes in the [NVS C17 vocabulary](https://vocab.nerc.ac.uk/collection/C17/current/). 

### Domain
Marine Domain

### Use case categories
* Semantic interoperability (shared understanding of data across multiple systems)

### Purpose of the mapping
Mapping is used to help filter out duplicates when accessing data from multiple sources and enable aggregators to rely on a unique identifier for identical instances of platforms across research infrastructures and datasets.

### Type of mapped resources
Source vocabulary is an unpublished list of literal strings extracted from the WOD, which is mapped to a SKOS concepts in a vocabulary hosted by NERC Vocabulary Server.

### Links to an existing mappings
None (yet)

## Tools used for creating the mapping

The [semantic analyser](https://semantics.bodc.ac.uk/) and manual work on spreadsheets.

### Type of mapping relations

- `owl:sameAs`

One-to-one mappings between literal and vocabulary concepts.

### Examples (samples) of different types of mapping implementations

```
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix orcid: <https://orcid.org/> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix pav: <http://purl.org/pav/> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix semapv: <https://w3id.org/semapv/vocab/> .
@prefix sssom: <https://w3id.org/sssom/> .
@prefix vocab: <http://vocab.nerc.ac.uk/collection/C17/current/> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

<http://sssom.invalid/e021ce83-b8fd-450d-b479-b3b9233e3427> a sssom:MappingSet;
  dcterms:license "https://w3id.org/sssom/license/all-rights-reserved"^^xsd:anyURI;
  sssom:mappings <http://sssom.invalid/record/0000>, <http://sssom.invalid/record/0001>,
    <http://sssom.invalid/record/0002>, <http://sssom.invalid/record/0003>;
  sssom:sssom_version sssom:version1.1 .

<http://sssom.invalid/record/0000> a owl:Axiom;
  dcterms:creator orcid:0000-0000-0000-0000;
  pav:authoredOn "2025-06-18"^^xsd:date;
  owl:annotatedProperty owl:sameAs;
  owl:annotatedTarget vocab:31O9;
  sssom:mapping_justification semapv:ManualMappingCuration;
  sssom:subject_label "ABBOT";
  sssom:subject_type rdfs:Literal .

<http://sssom.invalid/record/0001> a owl:Axiom;
  dcterms:creator orcid:0000-0000-0000-0000;
  pav:authoredOn "2025-06-18"^^xsd:date;
  owl:annotatedProperty owl:sameAs;
  owl:annotatedTarget vocab:74AQ;
  sssom:mapping_justification semapv:ManualMappingCuration;
  sssom:subject_label "ACT 4 (Cont.s;c.s.GOVL;built 1971;ren-d MELBOURNE STAR c.s.C6JY6 1992;IMO7108162";
  sssom:subject_type rdfs:Literal .

<http://sssom.invalid/record/0002> a owl:Axiom;
  dcterms:creator orcid:0000-0000-0000-0000;
  pav:authoredOn "2025-06-18"^^xsd:date;
  owl:annotatedProperty owl:sameAs;
  owl:annotatedTarget vocab:SADD;
  sssom:mapping_justification semapv:ManualMappingCuration;
  sssom:subject_label "ADDIRIYAH";
  sssom:subject_type rdfs:Literal .

<http://sssom.invalid/record/0003> a owl:Axiom;
  dcterms:creator orcid:0000-0000-0000-0000;
  pav:authoredOn "2025-06-18"^^xsd:date;
  owl:annotatedProperty owl:sameAs;
  owl:annotatedTarget vocab:36AE;
  sssom:mapping_justification semapv:ManualMappingCuration;
  sssom:subject_label "AEGAEO (R/V;call sign SXYY;built 12.1985;ex.AEGAIO 10.1994;IMO8412429)";
  sssom:subject_type rdfs:Literal .
```
