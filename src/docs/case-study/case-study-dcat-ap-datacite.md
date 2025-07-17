---
title: "DCAT-AP to DataCite Case Study"
author: "Philip Strömert"
author_github: "@StroemPhi"
date: "2025-07-17"
tags:
  - Semantic interoperability
  - Integration
  - Analysis
  - Discovery
  - Transformation
category: "Case Studies"
mapping_type: "Schema Mapping"
status: "Draft"
---

Mapping DCAT-AP to the DataCite schema.

### Summary

Having a mapping between DCAT-AP and the DataCite metadata schema is needed to extract DCAT-AP conform metadata from DOI metadata or transform DCAT-AP based metadata into DataCite schema compliant metadata in otder to register a DOI for a dcat:Resource. But also having a mapping which allows such crosswalks might allow better discoverability, when combining the [PID graph](https://datacite.org/blog/introducing-the-pid-graph/) with other knowledge graphs.

It would be great for NFDI and probably other innitiatives to evaluated if this draft is still up to date and to also provide other mapping representations than XSLT.

### Domain

domain-agnostic

### Use case category

- Semantic interoperability (shared understanding of data across multiple systems)
- Integration (Connecting data across disparate resources)
- Transformation (translating source data into a target schema)
- Analysis (Aggregating data and driving new insights)

### Purpose of the mapping

From [documentation](https://ec-jrc.github.io/datacite-to-dcat-ap/#background):

> The motivation for investigating the possiblity of aligning DataCite metadata with DCAT-AP is twofold:
>
> - To identify how to create a DCAT-AP-compliant representation of DataCite metadata, in order to enable their sharing across DCAT-AP-enabled data catalogues. This analysis is not meant to provide a complete representation of all DataCite metadata elements, but only of those included in DCAT-AP.
> - To identify how to create a DataCite-compliant representation of DCAT-AP metadata, in order to enable their publishing on the DataCite infrastructure. This analysis is meant to develop an extension of DCAT-AP, covering all DataCite metadata elements.

### Type of mapped resources

It is about mapping metadata of datasets and other DCAT ressources to DataCite publications of the ResourceType "Dataset".

### Links to an existing mappings

The mapping is [delivered as an XSLT script](https://github.com/ec-jrc/datacite-to-dcat-ap/blob/master/datacite-to-dcat-ap.xsl).

### Tools used for creating the mapping

- [XSLT (Extensible Stylesheet Language Transformations)](https://ec-jrc.github.io/datacite-to-dcat-ap/#formal-definition-xslt)

### Type of mapping relations

- entity mapping (one-to-one & many-to-one)
- structure / value mappings

### Examples (samples) of different types of mapping implementations

Example for mapping a title:

```xsl
<xsl:template name="Titles" match="*[local-name() = 'titles']/*[local-name() = 'title']">
  <xsl:variable name="title" select="normalize-space(.)"/>
  <xsl:choose>
    <xsl:when test="normalize-space(@xml:lang) != ''">
      <dct:title xml:lang="{@xml:lang}"><xsl:value-of select="$title"/></dct:title>
    </xsl:when>
    <xsl:otherwise>
      <dct:title><xsl:value-of select="$title"/></dct:title>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
```

See [source](https://github.com/ec-jrc/datacite-to-dcat-ap/blob/master/datacite-to-dcat-ap.xsl) for the full mapping.
