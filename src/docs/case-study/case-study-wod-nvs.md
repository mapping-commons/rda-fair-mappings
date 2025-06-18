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
  
Map labels (string) of platform (mainly ship) names appearing in metadata documents from the WOD database to ICES shipcodes in the NVS C17 vocabulary. This is done to help filter out duplicates when accessing data from multiple sources and enable aggregators to rely on a unique identifier for identical instances of platforms across RIs and datasets.

### Domain
Marine Domain

### Use case categories
* Semantic interoperability (shared understanding of data across multiple systems)

### Purpose of the mapping
Map labels (string) of platform (mainly ship) names appearing in metadata documents from the WOD database to ICES shipcodes in the NVS C17 vocabulary. This is done to help filter out duplicates when accessing data from multiple sources and enable aggregators to rely on a unique identifier for identical instances of platforms across RIs and datasets

### Type of mapped resources
string labels from unpublished vocabulary to concept URIs in the NVS (SKOS vocabulary) hosted by NERC Vocabulary Server.

### Links to an existing mappings
None (yet)

## Tools used for creating the mapping

The [semantic analyser](https://semantics.bodc.ac.uk/) and manual work on spreadsheets.

### Type of mapping relations

- `owl:sameAs`

One-to-one mappings between literal and vocabulary concepts.

### Examples (samples) of different types of mapping implementations

```
@Prefix sssom: https://w3id.org/sssom/ .
@Prefix xsd: http://www.w3.org/2001/XMLSchema# .

@Prefix local: https://www.local.com/ .

@Prefix semapv: https://w3id.org/semapv/vocab/ .

@Prefix owl: http://www.w3.org/2002/07/owl# .

@Prefix rdfs: http://www.w3.org/2000/01/rdf-schema# .

local:ABBOT_31O9 a sssom:Mapping;
sssom:subject_id local:ABBOT;
sssom:creator_id "orcid:0000-0000-0000-0000"^^xsd:string ;
sssom:mapping_date "2025-06-18"^^xsd:date ;
sssom:mapping_justification semapv:ManualMapping;
sssom:object_id http://vocab.nerc.ac.uk/collection/C17/current/31O9 ;
sssom:predicate_id owl:sameAs;
sssom:subject_type rdfs:Literal ;
sssom:subject_label "ABBOT"^^xsd:string .

local:ACT4ContscsGOVLbuilt_74AQ a sssom:Mapping;
sssom:subject_id local:ACT4ContscsGOVLbuilt;
sssom:creator_id "orcid:0000-0000-0000-0000"^^xsd:string ;
sssom:mapping_date "2025-06-18"^^xsd:date ;
sssom:mapping_justification semapv:ManualMapping;
sssom:object_id http://vocab.nerc.ac.uk/collection/C17/current/74AQ ;
sssom:predicate_id owl:sameAs;
sssom:subject_type rdfs:Literal ;
sssom:subject_label "ACT 4 (Cont.s;c.s.GOVL;built 1971;ren-d MELBOURNE STAR c.s.C6JY6 1992;IMO7108162"^^xsd:string .

local:ADDIRIYAH_SADD a sssom:Mapping;
sssom:subject_id local:ADDIRIYAH;
sssom:creator_id "orcid:0000-0000-0000-0000"^^xsd:string ;
sssom:mapping_date "2025-06-18"^^xsd:date ;
sssom:mapping_justification semapv:ManualMapping;
sssom:object_id http://vocab.nerc.ac.uk/collection/C17/current/SADD ;
sssom:predicate_id owl:sameAs;
sssom:subject_type rdfs:Literal ;
sssom:subject_label "ADDIRIYAH"^^xsd:string .

local:AEGAEORVcallsignSXYY_36AE a sssom:Mapping;
sssom:subject_id local:AEGAEORVcallsignSXYY;
sssom:creator_id "orcid:0000-0000-0000-0000"^^xsd:string ;
sssom:mapping_date "2025-06-18"^^xsd:date ;
sssom:mapping_justification semapv:ManualMapping;
sssom:object_id http://vocab.nerc.ac.uk/collection/C17/current/36AE ;
sssom:predicate_id owl:sameAs;
sssom:subject_type rdfs:Literal ;
sssom:subject_label "AEGAEO (R/V;call sign SXYY;built 12.1985;ex.AEGAIO 10.1994;IMO8412429)"^^xsd:string .
```
