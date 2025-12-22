# Integration with other standards

Last updated: 22.12.2025.

!!! warning

    This document is constantly being updated.

## Integration with SSSOM

One of the core premises of the RFMWG was to build our proposal as much as possible on SSSOM. In collaboration with multiple SSSOM core team members we have gradually discovered, throughout 2025, that the SSSOM metadata model was too restrictive to be generalised to schema mappings - both from a terminological perspective (many slots containing “mapping set” specific terminology; the use of the “justification” attribute) and conceptually (the need to represent complex mapping rules and n:n mappings; the design of SSSOM around a “flat, table like, data model” and more). The FAIR Mappings Schema designed by the RFMWG was drafted by members of the SSSOM Core Team to be aligned as much as possible with SSSOM, while generalising to the needs of representing both SSSOM-style “mapping sets” and schema mappings. This involved the generalisation of terminology (e.g. removing the use of terms like “mapping set” from attribute names) and more intuitive structuring (for example, richer nested “source” and “target” metadata). It is important to note that the FAIR Mappings Schema operates only on the level of mapping specifications (e.g. SSSOM mapping sets or LinkML TransformationSpecification) and does not venture into the representation of individual mapping relationships (see section on “integration with LinkML-map”. As part of preliminary work (which is applicable only for mapping sets and is now being generalised to schema mappings), we have mapped the concretely recommended attributes of FAIR Impact to the SSSOM vocabulary here.

## Integration with LinkML-map

LinkML-map is an upcoming system for declarative mapping specifications developed by the LinkML-core team at the University of North Carolina and the Lawrence Berkeley National Labs. Given a source schema, you can develop a LinkML-map transformation specification which specifies how an instance of a source schema should be transformed into an instance of a target schema. The FAIR Mappings WG has collaborated with members of the LinkML-map team to align and implement the FAIR Mappings Schema, were possible, as part of the LinkML TransformerSpecification data model. A draft of the implementation can be seen here: https://github.com/linkml/linkml-map/pull/81, adding the creator, author, mapping_method, publication_date, license and version slots according to the FAIR Mappings schema. A number of examples have been implemented as part of that PR, and directly as reference in the FAIR Mappings WG repository (https://github.com/mapping-commons/rda-fair-mappings/tree/main/examples/linkml-map).

## Integration with SEMAPV

Initially, the idea was that most of the terminology would find its way into SEMAPV. This idea has been replaced by providing a basic conceptual model (https://mapping-commons.github.io/rda-fair-mappings/model/) in conjunction with the FAIR Mappings Schema. However, some of the core concepts (such as mapping specification, mapping relationship and mapping execution) are still being prepared for inclusion in SEMAPV later in 2026. The work is being prepared by the FAIR Mappings WG here and here.

## Integration with FAIR Impact recommendations.

The FAIR Impact recommendations (https://zenodo.org/records/15111167)  is a set of recommendations for published FAIR mappings produced by the FAIR Impact project. We have built on the FAIR Impact recommendation, turned it into a searchable webpage and published it as part of our FAIR Mappings KB (https://mapping-commons.github.io/rda-fair-mappings/recommendation/) and provided a preliminary “mapping” to the SSSOM Metadata Vocabulary.  
