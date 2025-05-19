---
title: "Fresh Catalog Case Study"
author: "Alessandro Morichetta"
author_github: "@alemorigh"
date: "2025-05-19"
tags:
  - Discovery
category: "Case Studies"
mapping_type: "Schema Mapping"
status: "Draft"
---

### The title of your use case

FReSH catalog case study.

### Domain

public health

### Purpose of the mapping

Metadata transformation, metadata interoperability.

### Type of mapped resources

The mappings in the FReSH (France Recherche en Santé Humaine) catalog (currently under development) involve aligning different metadata schemas. Specifically:

- **Input mappings**: Records coming from various external sources—each using its own metadata schema—will be mapped to the [**FReSH metadata schema**](https://portail-fresh.github.io/fresh-metadata-schema/), which is the internal standard of the catalog.

 > Source 1 schema ---> FReSH schema 
   > Source 2 schema ---> FReSH schema 
   > .... 

- **Output mappings**: To improve data discoverability and interoperability, records in the FReSH schema will be exported using external metadata standards, primarily [**DDI Codebook 2.5 (DDI-C)**](https://docs.ddialliance.org/DDI-Codebook/2.5/xmlschema/). Additional export formats such as DDI Lifecycle (DDI-L) and [**HealthDCAT-AP**](https://healthdcat-ap.github.io/) may also be supported.

> FReSH schema ---> DDI-C 
> DDI-C ---> DDI-L 
> DDI-C ---> HealthDCAT-AP 

### Links to an existing mappings

Mappings are currently being developed, but a very first sample of DDI-C to HealthDCAT-AP mapping is available [here](https://github.com/portail-fresh/ddic-to-healthdcatap/blob/main/ddic-to-dcat-TEST.xsl).

### Tools used for creating the mapping

The mappings will primarily be implemented using XSLT transformations. Additionally, Python scripts, particularly using the lxml library, will be employed to support content transformation pipelines.

### Type of mapping relations

Mainly entity mappings.

### Examples (samples) of different types of mapping implementations

| Ext. source schema | FReSH Schema | DDI-C | HealthDCAT-AP |
|--- | ---| ---| ----| 
| NomFR | Title | docDscr/citation/titlStmt/titl | dct:title: rdfs:Literal [1..*] |
| AcronymeFR | Acronym | docDscr/citation/titlStmt/altTitl | dct:alternative: rdfs:Literal [0..*] |

XSL Snippet:

```
<xsl:for-each select="ddi:stdyDscr/ddi:citation/ddi:titlStmt/ddi:IDNo">
    <dct:identifier>
        <xsl:value-of select="." />
    </dct:identifier>
</xsl:for-each>
```