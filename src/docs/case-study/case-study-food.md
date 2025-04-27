---
title: "Food Case Study"
author: "Roman Baum"
author_github: "@rombaum"
date: "2025-04-27"
tags:
  - Semantic interoperability
category: "Case Studies"
mapping_type: "Entity Mapping"
status: "Draft"
---

Mapping and FoodOn to FoodEx2 and maintaining existing mappings.

### Domain

Biomedical, Agriculture

### Purpose of the mapping

Semantic interoperability

### Other purpose of the mapping

_No response_

### Type of mapped resources

OWL classes of the [FoodOn](https://foodon.org/) ontology, and the [FoodEx2](https://www.efsa.europa.eu/en/data/data-standardisation) food classification system.

### Links to an existing mappings

The mappings are published via Zenodo: https://doi.org/10.5281/zenodo.10716098

Direct download: [SSSOM Mapping in tsv](https://zenodo.org/records/10716098/files/foodon-foodex2-mapping.sssom.tsv?download=1)

### Tools used for creating the mapping

[Ontology CV Integrator](https://github.com/zbmed/ontology-cv-integrator) which makes use of [ROBOT](http://robot.obolibrary.org/). Reads controlled vocabulary contents from Excel spreadsheets, transforming them into valid [Quick Term Template](http://robot.obolibrary.org/template) files. Optionally runs uses ROBOT's template function to insert them into an .owl ontology file.

### Type of mapping relations

entity mappings

### Examples (samples) of different types of mapping implementations

subject_id | subject_label | predicate_id | object_id | object_label | mapping_justification | creator_id | license | mapping_date | comment
-- | -- | -- | -- | -- | -- | -- | -- | -- | --
http://ols3-semanticlookup.zbmed.de/km/foodex2/A000A | Teff grain | owl:equivalentClass | http://purl.obolibrary.org/obo/FOODON_03540026 | 00260 - teff grain (efsa foodex2) | https://w3id.org/semapv/vocab/CompositeMatching | https://ror.org/03k3ky186\|https://ror.org/0259fwx54 | https://www.gnu.org/licenses/gpl-3.0.html#license-text | 2023-04-01 | Composite matching justification: https://w3id.org/semapv/vocab/LexicalMatching + https://w3id.org/semapv/vocab/BackgroundKnowledgeBasedMatching
http://ols3-semanticlookup.zbmed.de/km/foodex2/A000B | Finger millet grain | owl:equivalentClass | http://purl.obolibrary.org/obo/FOODON_03540020 | 00200 - finger millet grain (efsa foodex2) | https://w3id.org/semapv/vocab/CompositeMatching | https://ror.org/03k3ky186\|https://ror.org/0259fwx54 | https://www.gnu.org/licenses/gpl-3.0.html#license-text | 2023-04-01 | Composite matching justification: https://w3id.org/semapv/vocab/LexicalMatching + https://w3id.org/semapv/vocab/BackgroundKnowledgeBasedMatching
http://ols3-semanticlookup.zbmed.de/km/foodex2/A000D | Foxtail millet grain | owl:equivalentClass | http://purl.obolibrary.org/obo/FOODON_03540022 | 00220 - foxtail millet grain (efsa foodex2) | https://w3id.org/semapv/vocab/CompositeMatching | https://ror.org/03k3ky186\|https://ror.org/0259fwx54 | https://www.gnu.org/licenses/gpl-3.0.html#license-text | 2023-04-01 | Composite matching justification: https://w3id.org/semapv/vocab/LexicalMatching + https://w3id.org/semapv/vocab/BackgroundKnowledgeBasedMatching

