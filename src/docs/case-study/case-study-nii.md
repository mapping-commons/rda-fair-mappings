---
title: "NII Case Study"
author: "Toshiyuki Hiraki"
author_github: "@hirakinii"
date: "2025-04-03"
tags:
  - Semantic interoperability
category: "Case Studies"
mapping_type: Schema Mapping
status: "Draft"
---

Mapping between metadata schemas used in our research data infrastructure (NII Research Data Cloud).

### Domain

Research data management.

### Purpose of the mapping

* Semantic interoperability.
* To make the information handled by the GakuNin RDM more interoperable so that the NII RDC becomes intra-connected and enables users to use the services seamlessly.
    * As a function to check the quality of research data management (RDM), the NII data governance function needs mapping in order to interpret the metadata given by the GakuNin RDM, which is the RDM service of the NII RDC.

### Other purpose of the mapping

None given.

### Type of mapped resources

Metadata schema handled in the GakuNin RDM (GRDM) and that defined by the NII RDC application profile.

### Links to an existing mappings

- [GRDM_RF_mapping](https://github.com/NII-DG/dg-metadata-manager/blob/master/dg_mm/data/mapping/GRDM_RF_mapping.json)

### Tools used for creating the mapping

- Creation of the mapping itself: manual
- Use of the mapping: this mapping is supposed to be used via the [DG Metadata Manager](https://github.com/NII-DG/dg-metadata-manager/tree/master) (Note: documentation is in Japanese).

### Type of mapping relations

- Entity mappings
- one-to-one

### Examples (samples) of different types of mapping implementations

From the metadata schema of the GakuNin RDM to that given by the NII RDC application profile:

```json
"researcher[].email[]": {
    "type": "string",
    "source": "member_info",
    "value": "data.embeds.users.data.attributes.email",
    "list": {
        "data": "researcher"
    }
}
```

### Maintainer

* The NII data governance team.
    * PL: Toshiyuki Hiraki (GitHub account: [hirakinii](https://github.com/hirakinii))

### Bug tracker

https://github.com/NII-DG/dg-metadata-manager/issues
