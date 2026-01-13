---
title: "DataCite to Schema.org Case Study"
author: "TBD"
author_github: "TBD"
date: "2025-01-13"
tags:
  - Schema Mapping
  - Discovery
  - Integration
  - Transformation
category: "Case Studies"
mapping_type: "Schema Mapping"
status: "Draft"
---

Mapping from DataCite to Schema.org for datasets.

### Summary

The schema.org metadata served from the DataCite API for data (and software) does not produce metadata that validates in the schema.org validator. Additionally, there are erroneous mappings of various contributor types, and terms included in the ESIP standard for describing datasets are not included in the mapping or are not updated to that standard. DataCite is interested in an updated mapping to be implemented in their API, both for mapping to schema.org and for mapping from schema.org.

### Domain

Science data

### Use case category

- Discovery (finding related data across resources)
- Integration (Connecting data across disparate resources)
- Transformation (translating source data into a target schema)

### Purpose of the mapping

- Translating DataCite metadata into Schema.org in a standard way centralizes that metadata generation into a trusted resource. Once the mapping is corrected, the correct schema.org metadata can be pulled from DataCite's API and then automatically inserted into dataset landing pages, increasing the discoverability of data across all sciences.
- This bases the creation of correct schema.org on DataCite metadata, which is regarded by publishers as the most trusted resource for metadata about data (and software). Schema.org metadata is commonly embedded on landing pages and websites to support discovery.
- Data repositories are interested in measuring the potential increase in traffic on the data landing pages where this updated schema.org is embedded to aid in the search engine optimization, particularly as searching with AI tools becomes more commonplace.

### Type of mapped resources

Science datasets are supported by this mapping. Science software will be supported by another mapping effort led by CodeMeta.

### Links to existing mappings

- [SSSOM file (Google Sheets)](https://docs.google.com/spreadsheets/d/1pQ8Nfxx6nZ_5-GWmWKDglrx-xbIYmfGxbQGclhi-wLo/edit?usp=sharing)
- [Related GitHub issue (ESIP Science-on-schema.org)](https://github.com/ESIPFed/science-on-schema.org/issues/265)

The sections of the mapping are also split out into multiple GitHub issues hosted by the ESIP Science-on-schema.org group.

### Tools used for creating the mapping

- Manual curation (done by hand)

### Type of mapping relations

The mapping aims to include all metadata fields included in the [ESIP recommended practices for expressing science datasets on schema.org](https://github.com/ESIPFed/science-on-schema.org/blob/main/guides/Dataset.md).

### Examples (samples) of different types of mapping implementations

- [DataCite's API](https://commons.datacite.org/doi.org) - provides schema.org metadata for datasets
