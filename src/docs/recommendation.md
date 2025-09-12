# FAIR Mapping Recommendations

FAIR Mapping recommendations were created as part of the the [FAIR-IMPACT](https://fair-impact.eu/) project (2022-2025). One of the goals of the RDA FAIR Mappings working group is to solicit feedback for the recommendations to improve them.

To formulate these recommendations, we conceptually divided the domain of mapping and crosswalks into four parts:  Format & Model, Mappings Metadata, PID, and Service & API. The recommendations were formulated based on brainstorming sessions focusing on each part using gathered community requirements and feedback collected during various events. The recommendations are broken down as “generic recommendations” and “technical recommendations”. The technical recommendations are technical implementation aspects that will ensure the machine execution of the generic recommendation that are human readable guidances.

## Rec 1. Model & Format 

#### Generic recommendation

G-Rec.1 Use a model to represent mappings with explicit links between the mapped entities and metadata for the crosswalk and the individual mappings that can be serialised in various formats ([discussion#75](https://github.com/mapping-commons/rda-fair-mappings/discussions/75))

#### Technical recommendation

T-Rec 1.1 Use the SSSOM model to structure and share your mappings ([discussion#59](https://github.com/mapping-commons/rda-fair-mappings/discussions/59))

T-Rec 1.2 Provide the mappings with different serialisations including LD standards (RDF/XML, OWL/XML, JSON-LD) ([discussion#61](https://github.com/mapping-commons/rda-fair-mappings/discussions/61))

T-Rec 1.3 Make sure the metadata describing the crosswalks and the individual mappings are aligned with standards and FAIR vocabularies to structure the metadata (e.g. Dublin Core, DCAT, …) ([discussion#62](https://github.com/mapping-commons/rda-fair-mappings/discussions/62))

## Rec 2. Mapping Metadata 

#### Generic recommendation

G-Rec 2. Provide metadata to describe the crosswalks and individual mappings ([discussion#76](https://github.com/mapping-commons/rda-fair-mappings/discussions/76))

#### Technical recommendation

T-Rec 2.1 Use the minimum SSSOM metadata schema defined by the FAIR IMPACT project to document mappings and crosswalks ([discussion#63](https://github.com/mapping-commons/rda-fair-mappings/discussions/63)). We recommend to adopt the following SSSOM metadata elements as mandatory metadata to describe the mappings and crosswalks:

- Metadata elements for **Findability** (SSSOM recommended properties in parentheses):
   - Author ([author_id](https://mapping-commons.github.io/sssom/author_id/), [author_label](https://mapping-commons.github.io/sssom/author_label/))
   - Creator ([creator_id](https://mapping-commons.github.io/sssom/creator_id/), [creator_label](https://mapping-commons.github.io/sssom/creator_label/))
   - Reviewer ([reviewer_id](https://mapping-commons.github.io/sssom/reviewer_id/), [reviewer_label](https://mapping-commons.github.io/sssom/reviewer_label/))
   - Date of creation of this version ([publication_date](https://mapping-commons.github.io/sssom/publication_date/), [mapping_date](https://mapping-commons.github.io/sssom/mapping_date/))
   - License ([license](https://mapping-commons.github.io/sssom/license/))
   - Source and target SAs‘ IDs ([subject_source](https://mapping-commons.github.io/sssom/subject_source/), [object_source](https://mapping-commons.github.io/sssom/object_source/))
   - Mapping method  (in SSSOM the mapping method is described by the [mapping_justification](https://mapping-commons.github.io/sssom/mapping_justification/))
   - Software used to create the mapping (if any) ([mapping_tool_id](https://mapping-commons.github.io/sssom/mapping_tool_id/), [mapping_tool](https://mapping-commons.github.io/sssom/mapping_tool/), [mapping_tool_version](https://mapping-commons.github.io/sssom/mapping_tool_version/))
   - Specific types of SA that are mapped (No corresponding SSSOM property yet)
   - Source term and target term label ([subject_label](https://mapping-commons.github.io/sssom/subject_label/), [object_label](https://mapping-commons.github.io/sssom/object_label/))
   - Source term and target term ID ([subject_id](https://mapping-commons.github.io/sssom/subject_id/), [object_id](https://mapping-commons.github.io/sssom/subject_id/))
   - Mapping predicate ([predicate_id](https://mapping-commons.github.io/sssom/predicate_id/), [predicate_label](https://mapping-commons.github.io/sssom/predicate_label/))
- Metadata elements for **Reusability**:
   - Accuracy score ([confidence](https://mapping-commons.github.io/sssom/confidence/), [similarity_score](https://mapping-commons.github.io/sssom/similarity_score/))
   - Version ([mapping_set_version](https://mapping-commons.github.io/sssom/mapping_set_version/))
   - License ([license](https://mapping-commons.github.io/sssom/license/))
   - Context (No corresponding property in SSSOM)
   - Justification ([mapping_justification](https://mapping-commons.github.io/sssom/mapping_justification/))
   - Clarification of the rationale of this mapping ([mapping_set_description](https://mapping-commons.github.io/sssom/mapping_set_description/) for the the explanation of why a mapping set was made for what purpose, [curation_rule](https://mapping-commons.github.io/sssom/curation_rule/)/[curation_rule_text](https://mapping-commons.github.io/sssom/curation_rule_text/) for the fine-grained rationale of a specific manually curated mapping, [mapping_justification](https://mapping-commons.github.io/sssom/mapping-justifications/) for general rationale of a specific mapping)
   - Source and target SAs’ NAME (NA in SSSOM)
   - Version of the SAs ([subject_source_version](https://mapping-commons.github.io/sssom/subject_source_version/), [object_source_version](https://mapping-commons.github.io/sssom/object_source_version/))
   - Mapping method (in SSSOM the mapping method is described by the [mapping_justification](https://mapping-commons.github.io/sssom/mapping_justification/))

T-Rec 2.2 If the mappings are separated from the associated metadata, Include an additional metadata field containing the PID pointing to the mapping or crosswalk ([discussion#64](https://github.com/mapping-commons/rda-fair-mappings/discussions/64))

## Rec 3. PID

#### Generic recommendation

G-Rec 3 Crosswalks (collections of mappings), individual mappings, and their versions must be identified with a GUPRI ([discussion#65](https://github.com/mapping-commons/rda-fair-mappings/discussions/65))

#### Technical recommendation

T-Rec 3.1 Use web-based GUPRIs that enable the access to the SSSOM mapping metadata and data (e.g. PURL, W3id,...) ([discussion#66](https://github.com/mapping-commons/rda-fair-mappings/discussions/66)) 


T-Rec 3.2 Establish and publish a PID policy describing the approach for versioning and explicitly describe the preservation policies([discussion#67](https://github.com/mapping-commons/rda-fair-mappings/discussions/67)) 

## Rec 4. Service & API

#### Generic recommendation

G-Rec 4 Publish your collection of mappings or crosswalks and the associated metadata into a specialized repository such as MSCR that provides access for humans and machines ([discussion#77](https://github.com/mapping-commons/rda-fair-mappings/discussions/77))

#### Technical recommendation

T-Rec 4.1 Mapping repositories must extract and publish the metadata records for the crosswalk and each of the individual mappings ([discussion#68](https://github.com/mapping-commons/rda-fair-mappings/discussions/68)) 

T-Rec 4.2 Metadata records describing collections of mappings, individual mappings, as well as their versions must be identified with a GUPRI ([discussion#69](https://github.com/mapping-commons/rda-fair-mappings/discussions/69)) 

T-Rec 4.3 Mapping repositories may allow procedure of authorisation and authentication([discussion#70](https://github.com/mapping-commons/rda-fair-mappings/discussions/70)) 

T-Rec 4.4 Mapping repositories should allow accessibility to mapping metadata even when the mapping is no longer available ([discussion#71](https://github.com/mapping-commons/rda-fair-mappings/discussions/71)) 

T-Rec 4.5 Mapping repositories must provide search functionality  for mappings and collections of mappings ([discussion#72](https://github.com/mapping-commons/rda-fair-mappings/discussions/72)) 

T-Rec 4.6 Mapping repositories must use open standards and machine readable descriptions to publish API description (e.g. OpenAPI, smartAPI) ([discussion#73](https://github.com/mapping-commons/rda-fair-mappings/discussions/73)) 
