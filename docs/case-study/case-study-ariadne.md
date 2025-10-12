<!-- DO NOT EDIT: This file is auto-generated. Any changes will be overwritten. -->

<span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Discovery</span> 

!!! info "ARIADNE European Archaeology Infrastructure Project Case Study Infobox"

    - **Author:** Doug Tudhope  (@dstudhope-24)
    - **Last updated:** 2025-09-12  
    - **Mapping Type:** ![Mapping Type](https://img.shields.io/badge/Entity Mapping-blue) 
    - **Status of this case study:** ![Status](https://img.shields.io/badge/Draft-yellow)

Vocabulary mappings in ARIADNE European Archaeology Infrastructure project.

### Summary

The [Getty Art & Architecture Thesaurus](https://www.getty.edu/research/tools/vocabularies/aat/about.html)
is employed as a central spine vocabulary for partners to map their native vocabularies and term lists - a hub structure enables a multilingual search capability via vocabulary mapping. Mappings are expressed via SKOS mapping relationships and output as structured JSON for use in the overall data aggregation process and in the ARIADNE portal. The approach followed offers some automatic support for final intellectual judgment. Discussed in [10.1177/01655515241283610](https://doi.org/10.1177/01655515241283610).

### Domain

Archaeology and related disciplines

### Use case category

Discovery (finding related data across resources)

### Purpose of the mapping

The ARIADNE Portal uses the mappings to enable concept based search over subject metadata for datasets in different languages. This allows a multilingual search capability.

### Type of mapped resources

Mappings between vocabulary concepts (and some word lists)

### Links to an existing mappings

See [here](http://legacy.ariadne-infrastructure.eu/resources-2/aat/mappings-to-aat/) for a list of mappings implemented in the [ARIADNE Portal](http://portal.ariadne-infrastructure.eu/). The mappings are published in PDF format, see for example the [ARIADNE AAT Mappings to The Discovery Programme LBG](http://legacy.ariadne-infrastructure.eu/wp-content/uploads/2019/01/ARIADNE_Discovery_AAT_Mappings.pdf). The JSON serialisations of the mappings exist (see example below), but are not publicly available yet.

### Tools used for creating the mapping

[ARIADNE Vocabulary Matching Tool](https://github.com/cbinding/VocabularyMatchingTool) and various manual methods (on spreadsheets etc). Mappings were performed by different individual project data providers.

### Type of mapping relations

SKOS Mapping relationships, such as exact match, close match, etc.

### Examples (samples) of different types of mapping implementations

```json
{
  "sourceURI": "",
  "sourceLabel": "NISSEN HUT",
  "targetLabel": "quonset huts",
"matchURI": "http://www.w3.org/2004/02/skos/core#closeMatch",
  "targetURI": "http://vocab.getty.edu/aat/300007960",
  "updated": "2024-03-05T17:40:17.220Z"
},
{
  "sourceURI": "",
  "sourceLabel": "ARCHERY BUTTS",
  "targetLabel": "archery targets",
"matchURI": "http://www.w3.org/2004/02/skos/core#broadMatch",
  "targetURI": "http://vocab.getty.edu/aat/300420286",
  "updated": "2024-03-05T17:40:19.974Z"
}
```