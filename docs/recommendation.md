# FAIR Mapping Recommendations
To formulate these recommendations, we conceptually divided the domain of mapping and crosswalks into four parts:  Format & Model, Mappings Metadata, PID, and Service & API. The recommendations were formulated based on brainstorming sessions focusing on each part using gathered community requirements and feedback collected during various events. The recommendations are broken down as “generic recommendations” and “technical recommendations”. The technical recommendations are technical implementation aspects that will ensure the machine execution of the generic recommendation that are human readable guidances.
## 1. Model & Format 
#### Generic recommendation
1.1 Use a model to represent mappings with explicit links between the mapped entities and metadata for the crosswalk and the individual mappings that can be serialised in various formats
#### Technical recommendation
1.2 Use the SSSOM model to structure and share your mappings ([discussion](https://github.com/mapping-commons/rda-fair-mappings/discussions/59))

1.3 Provide the mappings with different serialisations including LD standards (RDF/XML, OWL/XML, JSON-LD)

1.4 Make sure the metadata describing the crosswalks and the individual mappings are aligned with standards and FAIR vocabularies to structure the metadata (e.g. Dublin Core, DCAT, …)
## 2. Mapping Metadata 
#### Generic recommendation
2.1 Provide metadata to describe the crosswalks and individual mappings
#### Technical recommendation
2.2 Use the minimum SSSOM metadata schema defined by the FAIR IMPACT project to document mappings and crosswalks 

2.3 If the mappings are separated from the associated metadata, Include an additional metadata field containing the PID pointing to the mapping or crosswalk
## 3. PID
#### Generic recommendation
3.1 Crosswalks (collections of mappings), individual mappings, and their versions must be identified with a GUPRI
#### Technical recommendation
3.2 Use web-based GUPRIs that enable the access to the SSSOM mapping metadata and data (e.g. PURL, W3id,...) 

3.3 Establish and publish a PID policy describing the approach for versioning and explicitly describe the preservation policies
## 4. Service & API
#### Generic recommendation
4.1 Publish your collection of mappings or crosswalks and the associated metadata into a specialized repository such as MSCR that provides access for humans and machines
#### Technical recommendation
4.2 Mapping repositories must extract and publish the metadata records for the crosswalk and each of the individual mappings

4.3 Metadata records describing collections of mappings, individual mappings, as well as their versions must be identified with a GUPRI

4.4 Mapping repositories may allow procedure of authorisation and authentication

4.5 Mapping repositories should allow accessibility to mapping metadata even when the mapping is no longer available

4.6 Mapping repositories must provide search functionality  for mappings and collections of mappings

4.7 Mapping repositories must use open standards and machine readable descriptions to publish API description (e.g. OpenAPI, smartAPI)

