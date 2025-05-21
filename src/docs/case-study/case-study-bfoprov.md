---
title: "BFO-PROV Case Study"
author: "Philip Strömert"
author_github: "@StroemPhi"
date: "2025-05-19"
tags:
  - Semantic interoperability
  - Discovery
  - Data integration
category: "Case Studies"
mapping_type: "Entity Mapping"
status: "Draft"
---

Aligning the PROV-O provenance ontology with the Basic Formal Ontology (BFO), enabling interoperable, semantically consistent provenance representation across FAIR-aligned knowledge systems.

### Domain

General scientific domain

### Purpose of the mapping

The alignment between PROV-O and BFO is intended to enable interoperability between provenance data and ontologies structured under the Basic Formal Ontology (BFO) framework, such as those in the OBO Foundry and Common Core Ontologies. By aligning every PROV-O class and property to corresponding BFO, CCO, or RO terms using equivalence and subsumption relations, the mapping allows data from diverse domains to be reasoned over, queried, and integrated with minimal manual intervention. This alignment is designed to support FAIR data principles by making provenance knowledge machine-interpretable and semantically consistent across ontologies, thereby enriching data reuse, validation, and automated inference.

#### Who is this alignment for?

- As a biomedical ontology curator, I want to include provenance information about disease classification changes so that downstream users can trace ontology evolution in a semantically consistent way.
- As a knowledge graph engineer, I want to integrate experimental and computational provenance from diverse data sources into a BFO-aligned graph to enable unified reasoning.
- As a data scientist in a regulatory setting, I want to verify the origin and transformation of datasets using standardized provenance vocabularies aligned with BFO to ensure compliance and transparency.
- As a developer of FAIR data platforms, I want to expose provenance metadata that conforms both to PROV-O and BFO to support semantic search and reproducible workflows.
- As a SPARQL query author, I want to write queries that treat provenance and ontological content uniformly across domains and datasets.
- As a researcher using OBO Foundry ontologies, I want to understand where a given assertion came from, using interoperable provenance patterns that align with BFO’s formal realism.

### Type of mapped resources

Source: [PROV-O](https://www.w3.org/TR/prov-o/)
Target: [BFO 2020](http://purl.obolibrary.org/obo/bfo/2020/bfo-core.owl) and [BFO 2.0 classes only version ](http://purl.obolibrary.org/obo/bfo.owl)

### Links to an existing mappings

Source code: [https://github.com/BFO-Mappings/PROV-to-BFO](https://github.com/BFO-Mappings/PROV-to-BFO)
Paper: [A semantic approach to mapping the Provenance Ontology to Basic Formal Ontology](https://doi.org/10.1038/s41597-025-04580-1)

### Tools used for creating the mapping

Human curation

### Type of mapping relations

- `rdfs:subClassOf`
- `owl:equivalentClass`

Ontology alignment; entity and relation mappings that include one to one and complex mappings using OWL axiomitisation.

### Examples (samples) of different types of mapping implementations

```
prov:Agent rdf:type owl:Class .
[]  rdf:type owl:Axiom ;
    owl:annotatedSource   prov:Agent ;
    owl:annotatedProperty rdfs:subClassOf ; 
    owl:annotatedTarget   [ owl:intersectionOf ( obo:BFO_0000040 # material entity
        [ rdf:type owl:Restriction ;
          owl:onProperty obo:BFO_0000056 ; # participates in (at some time) 
          owl:someValuesFrom prov:Activity
        ]
        [ rdf:type owl:Restriction ;
          owl:onProperty obo:BFO_0000196 ; # bearer of
          owl:someValuesFrom [ owl:intersectionOf ( obo:BFO_0000023 # role
              [ rdf:type owl:Restriction ;
                  owl:onProperty obo:BFO_0000054 ; # realized in / has realization
                      owl:someValuesFrom prov:Activity
                                              ]
                                            ) ;
                        rdf:type owl:Class
                      ]
                ]
              ) ;
              rdf:type owl:Class
          ] ;
    sssom:object_label    "material entity that participates in (at some time) some Activity  and bears a role realized in that Activity" ;
    rdfs:comment "A prov:Agent is a material entity because always has some matter as a part that persists in time. A prov:Agent participates in (at some time) some prov:Activity and bears a role, that, if realized, is realized in a prov:Activity taking place. This axiomatizes the definition of agent as 'something that bears some form of responsibility for an activity taking place, for the existence of an entity, or for another agent's activity'. According to Requirement VI13 in 'Rationale of Prov', this could be a prov:Entity. A prov:SoftwareAgent is a material entity because it is defined as 'running software', meaning a particular, material carrier of software, as opposed to, for example, its source code. A prov:SoftwareAgent is a particular instance of sofware running on a particular computer."@en .
```
