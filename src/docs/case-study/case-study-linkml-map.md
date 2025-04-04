---
title: "Schema element mapping with LinkML-Map Case Study"
author: "Sierra Moxon"
author_github: "@sierra-moxon"
date: "2025-04-02"
tags:
  - Data integration
category: "Case Studies"
mapping_type: "Schema Mapping"
status: "Draft"
---

Map a schema element to an external standard or model.

### Domain

biomedical, biology, chemistry, industry, any! 

### Purpose of the mapping

Data integration

### Other purpose of the mapping

_No response_

### Type of mapped resources

biolink:Gene --> nmdc-schema:Gene
biolink:PhenotypicFeature --> phenopacket:PhenotypicFeature

With detailed provenance of the mapping, including how sub-elements that are part of the mapped element are also mapped. 

LinkML-Map auto-generates these nice diagrams to show how one schema element maps to another schema element:

![Example mapping environmental sample](../img/linkml-map1.png).

### Links to an existing mappings

I am not quite sure of the ask here, but here are some resources to show how we map schema elements in linkml to external standards:

in biolink model: https://biolink.github.io/biolink-model/Gene/ , in the LinkML segment toward the bottom of the documentation page, you can see the per-element mappings using skos predicates like this: 

```
exact_mappings:
- SO:0000704
- SIO:010035
- WIKIDATA:Q7187
- dcid:Gene
narrow_mappings:
- bioschemas:gene
broad_mappings:
- NCIT:C45822
```

in the linkml-map repo, you can see a series of tutorials and notebooks that show how this tool maps entire schemas to one another:

https://github.com/linkml/linkml-map/tree/main/docs/examples

### Tools used for creating the mapping

For schema mapping, LinkML provides two kinds of tools:

1. https://linkml.io/linkml-map/ - a declarative format for mapping two schemas to one another
2. https://linkml.io/linkml/schemas/uris-and-mappings.html - model syntax for mapping a specific element in the model to another element somewhere else in a different standard or model (using either skos predicates here or via identity mappings using slot/class_uris)



### Type of mapping relations

synonym, unit conversion, entity mappings, one to one, one to many, many to one

### Examples (samples) of different types of mapping implementations

Lots of examples in these notebooks:

https://github.com/linkml/linkml-map/tree/main/docs/examples, in particular, the tutorial: https://github.com/linkml/linkml-map/blob/main/docs/examples/Tutorial.ipynb

e.g. for linkml-map, declaring the mapping using a transformation specification like this one from the tutorial:

```
class_derivations:
  Individual:
    populated_from: Person
    slot_derivations:
      family_name:
        populated_from: family_name
      given_name:
        populated_from: given_name
      age:
        populated_from: age_in_years
      height:
        populated_from: height_in_cm
```

with visual output of the transformation/mapping

![Screenshot mapping Person to Individual](../img/linkml-map1.png).
