---
title: "NII Case Study"
author: "Toshiyuki Hiraki"
author_github: "@hirakinii"
date: "2025-02-17"
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

Semantic interoperability.

### Other purpose of the mapping

None given.

### Type of mapped resources

Metadata handled in the GakuNin RDM and those defined by the NII RDC application profile.

### Links to an existing mappings

- [GRDM_RF_mapping](https://github.com/NII-DG/dg-metadata-manager/blob/master/dg_mm/data/mapping/GRDM_RF_mapping.json)

### Tools used for creating the mapping

- Creation of the mapping itself: manual
- Use of the mapping: [DG Metadata Manager](https://github.com/NII-DG/dg-metadata-manager/tree/master) (Note: documentation is in Japanese).

### Type of mapping relations

- Entity mappings
- one-to-one

### Examples (samples) of different types of mapping implementations

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
