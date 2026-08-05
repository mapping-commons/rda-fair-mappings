---
title: "Biomappings Case Study"
author: "Charles Tapley Hoyt"
author_github: "@cthoyt"
date: "2026-08-04"
tags:
  - Data integration
  - Semantic interoperability
category: "Case Studies"
mapping_type: "Entity Mapping"
status: "Draft"
---

Biomappings: community-driven, semi-automated curation at scale

### Short title

Biomappings

### Summary

[Biomappings](https://github.com/biopragmatics/biomappings) is a community-driven
repository of predicted and curated semantic mappings that follows the
[open data, open code, open infrastructure (O3) guidelines](https://www.nature.com/articles/s41597-024-03406-w).

It builds on [SSSOM Curator](https://github.com/cthoyt/sssom-curator), a suite of
tools for predicting and curating semantic mappings encoded in the
[Simple Standard for Sharing Ontological Mappings (SSSOM)](https://mapping-commons.github.io/sssom/).
SSSOM Curator has three major components:

1. A semantic mappings prediction workflow, with implementations for lexical
   matching and lexical embedding similarity and extensibility for additional
   implementations
2. A (local) web-based curation interface for quick triage of predicted semantic
   mappings that supports full curator provenance
3. A set of tools for data integrity testing, summarization, and export

### Domain

Primarily biomedicine, but domain-agnostic.

### Use case category

Semantic interoperability (shared understanding of data across multiple systems)

### Purpose of the mapping

The Biomappings repository fills gaps where first-party semantic mappings are not
available. As such, Biomappings is typically used in conjunction with first-party
semantic mappings (e.g., originating from inside an ontology, distributed with a
database) when doing data integration (e.g., such as when constructing a knowledge
graph). The
[Semantic Mapping Reasoner and Assembler (SeMRA)](https://github.com/biopragmatics/semra)
operationalizes such a workflow.

### Type of mapped resources

This resource primarily deals with entity mappings (both classes and instances)
from ontologies, databases, controlled vocabularies, taxonomies, and other related
information artifacts.

Additionally, Biomappings covers a small number of simple schema mappings (where
predicates can be mapped).

Semantic mappings curated in Biomappings have been demonstrated to be incorporated
in upstream resources such as the Mondo Disease Ontology, Uber Anatomy Ontology
(Uberon), and Cell Ontology (CL).

### Links to existing mappings

- <https://w3id.org/biopragmatics/biomappings/sssom/biomappings.sssom.tsv>

### Tools used for creating the mapping

Because Biomappings is built on SSSOM Curator, any automated matching workflow can
be incorporated. By default, it uses a simple workflow based on
[Gilda](https://github.com/gyorilab/gilda/), and additionally includes wrappers
around other named entity recognition and named entity normalization workflows
such as spaCy, ScispaCy, and GLiNER, and can be extended to other workflows. It
also implements simple workflows for text embedding-based matching.

### Type of mapping relations

Most commonly a combination of one-to-one, one-to-many, many-to-one, and
many-to-many (which are induced by the combination of the curated mappings in
Biomappings with the first-party ones, when available):

- `skos:exactMatch`
- `skos:narrowMatch`
- `skos:broadMatch`

A full breakdown (linked to the repository, which is always up-to-date):

![Biomappings summary](https://github.com/biopragmatics/biomappings/raw/main/docs/img/summary.svg)

### Examples (samples) of different types of mapping implementations

The SSSOM Curator README contains examples on how to predict new mappings:
<https://github.com/cthoyt/sssom-curator#-getting-started>

Custom mapping workflows have been implemented here:
<https://github.com/biopragmatics/biomappings/tree/main/scripts>
