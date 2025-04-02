<!-- DO NOT EDIT: This file is auto-generated. Any changes will be overwritten. -->

<span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">FAIR</span> <span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Semantic interoperability</span> 

!!! info "INRAE Case Study Infobox"

    - **Author:** Sophie Aubin  (@saubin78)
    - **Last updated:** 2025-02-17  
    - **Mapping Type:** ![Mapping Type](https://img.shields.io/badge/Entity Mapping-blue) 
    - **Status of this case study:** ![Status](https://img.shields.io/badge/Draft-yellow)

Mapping the INRAE Thesaurus with internal and external KOS.

### Domain

Agriculture, food and environmental research.

### Purpose of the mapping

Semantic interoperability.

### Other purpose of the mapping

(Meta)data integration. The mappings allow to seamlessly search or mix resources (publications, data, code...) described through metadata using different semantic arterfacts. To a lesser extent, the mappings can be used for data integration. 

### Type of mapped resources

The INRAE Thesaurus, an **institutional thesaurus** of 17,000 concepts used in open archives, data repositories, and other information systems managed by INRAE, serves as the main resource. It is partially mapped to other **thesauri** managed by tiers organisations: Agrovoc, MeSH, GEMET and one thesaurus managed by an INRAE research team the French Crop Usage thesaurus (all available on public KOS portals).
More KOS are to be mapped to INRAE Thesaurus, including **ontologies** created and managed by research teams to address specific scientific needs.

### Links to an existing mappings

[INRAE Thesaurus on Agroportal](https://agroportal.lirmm.fr/ontologies/INRAETHES?p=summary): mappings are included in the thesaurus RDF file and expressed as "skos:exactMatch"
AgroPortal computes and gives access to additional mappings.
SKOS collections for all the concepts mapped to each KOS are available [here](https://consultation.vocabulaires-ouverts.inrae.fr/thesaurus-inrae/fr/page/gr_45b18adc).

### Tools used for creating the mapping

[AML-Extended](https://forgemia.inra.fr/christian.pichot/AML-Project) with a manual curation.


### Type of mapping relations

- Synonymy (exact)
- one to one

### Examples (samples) of different types of mapping implementations

```turtle
thesaurusinrae:c_15825
  skos:exactMatch <http://aims.fao.org/aos/agrovoc/c_8601>, <http://www.eionet.europa.eu/gemet/concept/47> ;
  skos:prefLabel "acidity"@en, "acidité"@fr .

thesaurusinrae:c_4365
  skos:exactMatch <http://id.nlm.nih.gov/mesh/D000076282>, <http://www.eionet.europa.eu/gemet/concept/1652>, <http://aims.fao.org/aos/agrovoc/c_15956> ;
  skos:prefLabel "compostage"@fr, "composting"@en.
```