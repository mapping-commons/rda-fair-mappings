---
title: "I-ADOPT Case Study"
author: "Barbara Magagna"
author_github: "@mabablue"
date: "2025-03-01"
tags:
  - FAIR
  - Data Integration
  - Semantic interoperability
category: "Case Studies"
mapping_type: "Entity Mapping"
status: "Draft"
---

Express which specification was used when mapping in general, but this case study is to be able to express that a mapping has been done based on I-ADOPT

### Domain

Potentially any domain, but with an initinal focus on environmental domain

### Purpose of the mapping

Semantic interoperability, Data integration.

### Other purpose of the mapping

None given.

### Type of mapped resources

- SKOS concepts about variables (observable properties) mapped based on the I-ADOPT Framework ontology. This case study has different user stories:

**Use case 1: direct mappings of description components**

![I-ADOPT use case 1](../img/I-ADOPT_use_case1.png)


**Use case 2: Indirect mappings of description components**
2a: related mappings of description components:
![I-ADOPT use case 2a](../img/I-ADOPT_use_case2a.png)

2b: description components mapped to the same reference semantic artefacts
![I-ADOPT use case 2b](../img/I-ADOPT_use_case2b.png)

2 c: no explicit mappings existing, but automatic mappings based on term matches
![I-ADOPT use case 2c](../img/I-ADOPT_use_case2c.png)

**Use case 3: Description components mapped between a variable and a blank node**

![I-ADOPT use case 3](../img/I-ADOPT_use_case3.png)

### Links to an existing mappings

- [https://vocab.nerc.ac.uk/mapping/I/1740186/](https://vocab.nerc.ac.uk/mapping/I/1740186/)

### Tools used for creating the mapping

Manual procedure. We are about developing SQPARQL queries to perform mappings. Alexandra Kokkinaki will provide those.

### Type of mapping relations

- Entity mappings based on the I-ADOPT Framework.

### Examples (samples) of different types of mapping implementations

--
