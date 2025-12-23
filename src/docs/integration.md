# Integration with Other Standards

Last updated: 22.12.2025.

!!! warning

    This document is constantly being updated.

## Integration with SSSOM

One of the core premises of the RDA FAIR Mappings Working Group was to build our proposal as much as possible on [SSSOM](https://mapping-commons.github.io/sssom/). In collaboration with multiple SSSOM core team members, we gradually discovered throughout 2025 that the SSSOM metadata model was too restrictive to be generalised to schema mappings.

The limitations were both terminological and conceptual:

- **Terminological**: Many slots contain "mapping set"-specific terminology (e.g., the use of the "justification" attribute)
- **Conceptual**: The need to represent complex mapping rules, n:n mappings, and the design of SSSOM around a flat, table-like data model

The [FAIR Mappings Schema](https://mapping-commons.github.io/fair-mappings-schema/) was drafted by members of the SSSOM Core Team to align as closely as possible with SSSOM while generalising to support both SSSOM-style mapping sets and schema mappings. This involved:

- Generalising terminology (e.g., removing the use of terms like "mapping set" from attribute names)
- More intuitive structuring (e.g., richer nested "source" and "target" metadata)

Note that the FAIR Mappings Schema operates only at the level of **mapping specifications** (e.g., SSSOM mapping sets or LinkML TransformationSpecification) and does not address the representation of individual mapping relationships (see [Integration with LinkML-map](#integration-with-linkml-map)).

As part of preliminary work (applicable only to mapping sets, now being generalised to schema mappings), we have mapped the recommended attributes from FAIR Impact to the SSSOM vocabulary.

## Integration with LinkML-map

[LinkML-map](https://linkml.io/linkml-map/) is a system for declarative mapping specifications developed by the LinkML core team at the University of North Carolina and Lawrence Berkeley National Labs. Given a source schema, you can develop a LinkML-map transformation specification that defines how an instance of a source schema should be transformed into an instance of a target schema.

The FAIR Mappings WG has collaborated with the LinkML-map team to align and implement the FAIR Mappings Schema, where possible, as part of the LinkML TransformerSpecification data model. A [draft implementation](https://github.com/linkml/linkml-map/pull/81) adds the `creator`, `author`, `mapping_method`, `publication_date`, `license`, and `version` slots according to the FAIR Mappings Schema.

Examples have been implemented as part of that PR and are available in the [FAIR Mappings WG repository](https://github.com/mapping-commons/rda-fair-mappings/tree/main/examples/linkml-map).

## Integration with SEMAPV

Initially, the plan was to incorporate most of the terminology into [SEMAPV](https://mapping-commons.github.io/semantic-mapping-vocabulary/). This approach has been replaced by providing a [conceptual model](model.md) in conjunction with the FAIR Mappings Schema.

However, some core concepts—such as mapping specification, mapping relationship, and mapping execution—are still being prepared for inclusion in SEMAPV later in 2026.

## Integration with FAIR Impact Recommendations

The [FAIR Impact recommendations](https://zenodo.org/records/15111167) are a set of guidelines for publishing FAIR mappings produced by the FAIR Impact project. We have built on these recommendations by:

- Converting them into a [searchable webpage](recommendation.md) as part of our FAIR Mappings knowledge base
- Providing a preliminary mapping to the SSSOM Metadata Vocabulary  
