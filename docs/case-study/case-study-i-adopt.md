<!-- DO NOT EDIT: This file is auto-generated. Any changes will be overwritten. -->

<span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Variable Mapping</span> <span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Data Integration</span> 

!!! info "I-ADOPT Case Study Infobox"

    - **Author:** Barbara Magagna  (@mabablue)
    - **Last updated:** 2025-04-05  
    - **Mapping Type:** ![Mapping Type](https://img.shields.io/badge/Entity Mapping-blue) 
    - **Status of this case study:** ![Status](https://img.shields.io/badge/Draft-yellow)

Making it possible to specify I-ADOPT as a mapping framework and the specific conditions under which a mapping is based on

### Domain

Potentially any domain, but with an initinal focus on the environmental domain

### Purpose of the mapping

I-ADOPT is a mapping framework that allows to compare two different observational datasets by decomposing their observable properties into atomic components that play specific roles in the description. These components can be mapped to each other using different mapping conditions.


### Type of mapped resources

- SKOS concepts describing composite variables and their components. This case study has different user stories:

**Case study 1: direct mappings of description components**

Mapping of two datasets using their variable descriptions based on the fact that both variable concepts have been mapped to the same description components using the I-ADOPT object properties.

![I-ADOPT user story 1](../img/I-ADOPT_user_story1.jpg)


**Use case 2: Indirect mappings of description components**

2a: related mappings of description components:

Mapping of two datasets using their variable descriptions based on the fact that both have been mapped to atomic concepts that are related to each others by existing mappings.

![I-ADOPT user story 2a](../img/I-ADOPT_user_story2a.jpg)

2b: description components mapped to the same reference semantic artefacts

Mapping of two datasets using their variable descriptions based on the fact that their atomic concepts have not been mapped to each other but mapped to common reference ontologies.

![I-ADOPT user story 2b](../img/I-ADOPT_user_story2b.jpg)

2 c: no explicit mappings existing, but automatic mappings based on term matches

Mapping of two datasets using their variable descriptions based on automatic mappings of their atomoic concepts. 

![I-ADOPT user story 2c](../img/I-ADOPT_user_story2c.jpg)

**Use case 3: Description components mapped between a variable and a blank node**

Mapping of two datasets based on the fact that they are annotated with the same description components using the I-ADOPT object properties, but one dataset has a composite variable concept and the other is described directly by its description component.

![I-ADOPT user story 3](../img/I-ADOPT_user_story3.jpg)

### Links to an existing mappings

- [https://vocab.nerc.ac.uk/mapping/I/1740186/](https://vocab.nerc.ac.uk/mapping/I/1740186/)

  Other mappings will follow after a basic agreement how to create FAIR mappings for I-ADOPT variables.

### Tools used for creating the mapping

For now we are using a manual procedure. Howeever, we are developing SQPARQL queries to perform mappings. Moreover, we are developing a LLM-enabled variable annotation service based on I-ADOPT that will provide FAIR mappings.

### Type of mapping relations

- Entity mappings based on the I-ADOPT Framework.