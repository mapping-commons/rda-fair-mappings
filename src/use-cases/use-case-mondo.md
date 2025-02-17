---
title: "Mondo Use Case"
author: "Nicolas Matentzoglu"
date: "2025-02-15"
tags:
  - Ontology Mapping
  - Data Integration
category: "Use Cases"
status: "Draft"
---

Mapping disease terminologies into a harmonized ontology of diseases.

### Domain

Biomedical and clinical informatics, focusing on disease classification and standardization.

### Purpose of the mapping

To create a unified disease ontology by integrating multiple disease vocabularies and classifications, ensuring semantic interoperability across biomedical databases.

### Other purpose of the mapping

- Facilitating disease data integration for translational research.
- Enabling cross-resource disease annotations in knowledge graphs.
- Supporting clinical decision support systems and patient stratification.

### Type of mapped resources

- Biomedical ontologies (e.g., **DOID**, **NCIT**).
- Terminologies and classifications (e.g., **ORDO**, **ICD10**, **ICD11**).
- Disease-related data from biomedical databases (eg **NORD**, **GARD**, **OMIM**).

### Links to existing mappings

- [Mappings in Mondo Disease Ontology on GitHub](https://github.com/monarch-initiative/mondo/blob/master/src/ontology/mappings)
- [Mondo Mappings on OLS](https://www.ebi.ac.uk/ols4/ontologies/mondo)

### Tools used for creating the mapping

- **Lexical matching tools** (e.g., [OAK lexmatch](https://github.com/INCATools/ontology-access-kit))
- **Custom scripts** (e.g., Python), see [Mondo Ingest](https://github.com/monarch-initiative/mondo-ingest)
- **Manual curation** (Domain expert review and ontology alignment)

### Type of mapping relations

- **Exact match** (`skos:exactMatch`): A term in an external source is conceptually identical to a term in Mondo. 
- **Broad match** (`skos:broadMatch`): A term in an external source is conceptually narrower to a term in Mondo.
- **Narrow match** (`skos:narrowMatch`):  A term in an external source is conceptually broader to a term in Mondo.
- **Related match** (`skos:relatedMatch`):  A term in an external source is conceptually related, but neither identical, nor broader, nor narrower to a term in Mondo.

### Examples (samples) of different types of mapping implementations

See [here](https://github.com/monarch-initiative/mondo/blob/master/src/ontology/mappings/mondo.sssom.tsv).