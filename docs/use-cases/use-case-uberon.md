
---
title: "Uberon Use Case"
author: "Damien Goutte-Gattat"
date: "2025-02-17"
tags:
  - Ontology mapping
  - Data Integration
category: "Use Cases"
status: "Draft"
---

Mapping anatomical entities across anatomy ontologies.

### Domain

Biology.

### Purpose of the mapping

Creating a unified multi-species anatomy ontology, allowing consistent annotation of biological data.

### Other purpose of the mapping

None given.

### Type of mapped resources

Entities from from the species-neutral anatomy ontology Uberon and cell type ontology CL, mapped to entities from species-specific anatomy and cell type ontologies such as:

- FlyBase’s Drosophila Anatomy Ontology (FBbt),
- XenBase’s Xenopus Anatomy Ontology (XAO),
- ZFIN’s Zebrafish Anatomy and Development Ontology (ZFA),
- WormBase’s C. elegans Gross Anatomy Ontology (WBbt),
etc.

### Links to an existing mappings

Mappings between FBbt and Uberon/CL (in SSSOM/TSV format) can be found [here](http://purl.obolibrary.org/obo/fbbt/fbbt.sssom.tsv).

### Tools used for creating the mapping

Mappings are created by manual curation.

### Type of mapping relations

Most mappings between Uberon/CL and the species-specific anatomy ontologies use a handful of dedicated mapping predicates specifically created to represent cross-species mappings:

- `https://w3id.org/semapv/vocab/crossSpeciesExactMatch`
- `https://w3id.org/semapv/vocab/crossSpeciesBroadMatch`
- `https://w3id.org/semapv/vocab/crossSpeciesNarrowMatch`
- `https://w3id.org/semapv/vocab/crossSpeciesRelatedMatch`

### Examples (samples) of different types of mapping implementations

For an example of what we do with the mappings: the [Uberon-to-FBbt ontology bridge](https://github.com/obophenotype/uberon/blob/master/src/ontology/bridge/uberon-bridge-to-fbbt.owl), used to merge Uberon and FBbt together (a detailed explanation of how this bridge is derived from the Uberon/FBbt mappings is available [here](https://incenp.org/dvlpt/sssom-java/sssom-ext/sssomt-owl.html#a7._Examples)).
