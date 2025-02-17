# Related resources

The FAIR Mappings Working Group will, where possible, build on existing technology and intiatives. This page lists those resources for reference.

## Mapping standards

- [Simple Standard for Sharing Ontological Mappings (SSSOM)](https://mapping-commons.github.io/sssom/): SSSOM is a standard designed to represent semantic or ontological mappings. SSSOM's data model works by defining "mapping sets" consisting of individual mappings that each relate a subject and object entity with a predicate describing those entities' relationships. SSSOM is an example of a framework that can be used to model and serialize a mapping, allowing that mapping to be made FAIR.
- [LinkML Map](https://linkml.io/linkml-map/): LinkML Map is another framework for specifying, serializing, and executing mappings. LinkML Map is not yet fully stable, but allows sue of (a subset of) Python to specify complex mappings while maintaining compatibility with SSSOM. LinkML Map's origins lie in the observation that some people wanted to extend SSSOM to perform more complex mappings than SSSOM can represent.

## Conceptual resources for mapping

- [EOSC Interoperability Framework](https://eoscfuture.eu/ker/eosc-interoperability-framework/): The EOSC (European Open Science Cloud) Interoperability Framework is a set of guidelines promoting standards and preactices that facilitate technical and semantic interoperability across research infrastructure.
  - [EOSC Interoperability Framework Report](https://op.europa.eu/en/publication-detail/-/publication/d787ea54-6a87-11eb-aeb5-01aa75ed71a1/language-en): A report "identifying the general principles that should drive the the creation of the EOSC Interoperability Framework," notably including a definition of semantic interoperability that requires mappings.
- [Cross-Domain Interoperability Framework](https://worldfair-project.eu/cross-domain-interoperability-framework/): "A set of guidelines and practice for using domain-agnostic standards to support the interoperability and reusability of FAIR data." Primarily relevant to mappings in advocating for the adoption of a single standard for various aspects of metadata that require integration, aiming to reduce the number of required mappings.
- [SEMAF: A Proposal for a Flexible Semantic Mapping Framework](https://codata.org/report-semaf-a-proposal-for-a-flexible-semantic-mapping-framework): "A study for a flexible framework to create, document and publish semantic mappings and cross-walks linking different semantic artefacts within a particular scientific community and across scientific domains." SEMAF sets out a model for describing mappings and lays out some requirements for a proposed framework for managing mappings. SEMAF advocates for these mappings and cross-walks to be FAIR. 
  - [SEMAF Report](https://doi.org/10.5281/zenodo.4651420)

## Mapping Tools

### Mapping maintenance and transformation

- [Python Utilities for SSSOM](https://github.com/mapping-commons/sssom-py): A python library and command-line toolkit for working with [SSSOM](https://mapping-commons.github.io/sssom/).
- [SSSOM-Java](https://incenp.org/dvlpt/sssom-java/): An implementation of the [SSSOM standard](https://mapping-commons.github.io/sssom/) for Java.
- [Ontology Access Kit (OAK)](https://github.com/INCATools/ontology-access-kit): A python library for common ontology operations (feature lookup, search, validation, modification, and more) over a variety of back-ends.

### Matching

- [AgreementMakerLight (AML)](https://github.com/AgreementMakerLight/AML-Project): An automated and efficient ontology matching system.

