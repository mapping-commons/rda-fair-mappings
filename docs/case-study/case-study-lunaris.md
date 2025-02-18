<!-- DO NOT EDIT: This file is auto-generated. Any changes will be overwritten. -->

<span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">FAIR</span> <span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">Data Integration</span> 

!!! info "Lunaris Case Study Infobox"

    - **Author:** Tristan Kuehn  (@tkkuehn)
    - **Last updated:** 2025-01-30  
    - **Mapping Type:** ![Mapping Type](https://img.shields.io/badge/Schema Mapping-blue) 
    - **Status of this case study:** ![Status](https://img.shields.io/badge/Draft-yellow)

Mapping Canadian metadata records from their source schema to a unified schema for centralized discovery

### Domain

The mappings apply to Canadian research (regardless of scientific domain) and government and government open data.

### Purpose of the mapping

Discovery

### Other purpose of the mapping

Harvest and aggregate Canadian metadata records at https://lunaris.ca

### Type of mapped resources

Metadata records describing datasets from a variety of data sources are mapped to an internal metadata schema. Those sources represent their metadata using different schemas, some of which are sparsely documented. Fields from a source schema are therefore mapped to fields in the Lunaris schema, but in some cases these mappings are not direct and require some conditional logic. Geospatial fields indicating a region that is relevant to the dataset are a particular point of emphasis.

### Links to an existing mappings

Our mappings are not isolated enough from the rest of the metadata harvesting code to be shareable concisely and the code is not currently open, but we aim to make those mappings public as this group's work progresses.

### Tools used for creating the mapping

Source metadata is collected with API calls to our data sources, then Python code performs the mappings.

### Type of mapping relations

- Direct one-to-one synonymy (e.g. titles, full names)
- Many-to-one mappings (e.g. file-level access conditions collated to a dataset-level description of access, addition of auxiliary description fields to an overall description field.

### Examples (samples) of different types of mapping implementations

Here's an example of a many-to-one field mapping with some conditional logic as part of a broader mapping from the Dataverse API ([example record](https://borealisdata.ca/api/datasets/export?exporter=dataverse_json&persistentId=doi%3A10.5683/SP3/NCEIJ1)) to Lunaris ([post-mapping record](https://www.lunaris.ca/catalog/96ca56a3-9b7a-52dc-8803-3876e600d9f9?locale=en)).
```python
# dataverse_record is the source record crawled from the Dataverse API
# We search the whole dataset for any file that is flagged as restricted
access = "Public"
if "files" in dataverse_record["latestVersion"]:
    for file in dataverse_record["latestVersion"]["files"]:
        if "restricted" in file and file["restricted"]:
            access = "Restricted"
            break
```