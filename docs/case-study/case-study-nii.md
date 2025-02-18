<!-- DO NOT EDIT: This file is auto-generated. Any changes will be overwritten. -->

**Author:** Toshiyuki Hiraki  (@hirakinii)
**Last updated:** 2025-02-17  
**Mapping Type:** ![Mapping Type](https://img.shields.io/badge/Schema Mapping-blue) 
**Status of this case study:** ![Status](https://img.shields.io/badge/Draft-yellow)

<span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Semantic interoperability</span> 

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