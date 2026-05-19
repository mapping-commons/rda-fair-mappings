---
title: "PLUGIN-Rosetta Case Study"
author: "Daniel Kapitan"
author_github: "@dkapitan"
date: "2026-04-17"
tags:
  - Data integration
  - Healthcare
category: "Case Studies"
mapping_type: "Schema Mapping"
status: "Draft"
---

Integration of information models, schemas and mappings in LinkML.

### Short title

PLGN-ROSETTA

### Summary

Data engineers who are tasked to build real-world data pipelines are faced
with disparate representations of information models (OMOP, FHIR, openEHR),
vocabularies (SNOMED, Loinc) and mappings (OMOP vocabularies, Vulcan
FHIR-to-OMOP) which they often want to integrate in their ETL code. Using
LinkML as a common intermediate,
[PLUGIN-Rosetta](https://github.com/plugin-healthcare/linkml-rosetta) aims
to integrate the most commonly used clinical informatics models and
mappings, easy and ready to use in design-time.

### Domain

Healthcare

### Use case category

Integration (Connecting data across disparate resources)

### Purpose of the mapping

This mapping is part of a large programme to implement an open, hybrid data
sharing platform for Dutch hospitals. Please refer to the
[data station specification](https://health-ri.github.io/data-station-specification/en/)
for more context.

More specifically, PLUGIN-Rosetta aims to implement (a first version of) the
requirements defined in the
[Information section](https://health-ri.github.io/data-station-specification/en/informatie/)
of the data station specification. The target audience/users of this project
are data engineers who need to implement many kinds of ETL transformations
and mappings for data stations.

### Type of mapped resources

**Schemas.**
Mappings between the most widely used healthcare informatics models: FHIR,
OMOP, openEHR and also Dutch-specific models such as
[LBZ](https://www.dhd.nl/assets/uploads/downloads/DM-LBZ-versie-8-3-20230101-DM-definitief.pdf)
and the
[Dutch Cancer Registry](https://zorginformatiearchitectuur.nl/wp-content/uploads/2024/06/1420_IKNL-on-FHIR-en-PLUGIN.pdf).

**Entities.**
Mappings between the most widely used vocabularies, such as
[OMOP Athena](https://athena.ohdsi.org/) and
[UMLS](https://www.nlm.nih.gov/research/umls/index.html).

### Links to existing mappings

The project aims to integrate many existing, commonly used information
models and mappings. The current proof-of-principle has integrated FHIR R6
to OMOP CDM 5.4 using the
[FHIR to OMOP IG](https://build.fhir.org/ig/HL7/fhir-omop-ig/en/).
The roadmap includes:

- [EOS](https://github.com/SevKohler/Eos): openEHR to OMOP
- [DHD diagnosis thesaurus](https://www.dhd.nl/assets/uploads/Inhoudelijke-richtlijnen-Diagnosethesaurus-versie-2.3.pdf):
  mapping of Dutch diagnosis vocabulary to SNOMED. Expected to become
  publicly available in 2026.
- [DHD procedure thesaurus](https://www.dhd.nl/assets/uploads/downloads/Richtlijnen-ondersteunende-migratietabel-CBV-Verrichtingenthesaurus.pdf):
  mapping of Dutch vocabulary of procedures to SNOMED. Expected to become
  publicly available in 2026.
- Dutch Z-Index to OMOP: mapping pharmaceutical vocabulary used in Dutch
  healthcare institutions to OMOP concepts, thereby linking it to SNOMED
  and RxNorm. Publication being considered by ErasmusMC.
- [Epilepsy diagnosis](https://www.epilepsydiagnosis.org/): mapping of free
  text vocabulary for epilepsy domain to SNOMED. Under construction in
  collaboration with [DHD](https://dhd.nl) and [SEIN](https://sein.nl).

### Tools used for creating the mapping

- Built as a standalone Python package that can be used in developing ETL
  pipelines.
- Uses [OpenCode](https://opencode.ai/) agentic-coding assistant and
  [roborev](https://www.roborev.io/) for generating deterministic scripts.

### Type of mapping relations

Integrate existing mapping relations, such as defined by OMOP OHDSI Relation
or in the [LOINC Ontology](https://loincsnomed.org/).

The authors note that these mappings often lack precise mapping relation
definitions, such as `skos:exactMatch`, and are exploring how to improve
them through a combination of manual curation and agentic coding —
particularly for the Dutch vocabularies.

### Examples (samples) of different types of mapping implementations

A minimal LinkML representation of the FHIR R4 resource fields that are
mapped to OMOP CDM 5.4 by the HL7 fhir-omop-ig (tag 1.0.0-ballot). Each
mapped slot carries a list of `exact_mappings` pointing to OMOP CDM fields,
e.g.:

```yaml
classes:
  Patient:
    class_uri: fhir:Patient
    attributes:
      gender:
        range: string
        slot_uri: fhir:Patient.gender
        description: male | female | other | unknown
        exact_mappings:
          - omop:gender_concept_id
          - omop:gender_source_value
      birthDate:
        range: date
        slot_uri: fhir:Patient.birthDate
        exact_mappings:
          - omop:birth_datetime
          - omop:year_of_birth
          - omop:month_of_birth
          - omop:day_of_birth
```

The full schema covers Patient, Encounter, Condition, Observation,
Procedure, MedicationStatement, Immunization and AllergyIntolerance and is
available in the
[linkml-rosetta repository](https://github.com/plugin-healthcare/linkml-rosetta).
