---
title: "DLITE Mapping Case Study"
author: "Jesper Friis"
author_github: "@jesper-friis"
date: "2025-03-17"
tags:
  - Semantic interoperability
category: "Case Studies"
mapping_type: "Entity Mapping"
status: "Draft"
---


Semantic mappings of datamodels.

### Domain

Formalised data documentation, applicable to any scientific domain

### Purpose of the mapping

Semantic interoperability

### Other purpose of the mapping

Enhance data models with semantics

### Type of mapped resources

Here we define a datamodel as a formalised way to describe a dataset. The key parts of a datamodel is its data properties, each of which describe a datum in the dataset in terms of its name, type, shape, unit and human description. By mapping the datamodel itself, as well as each of its properties to concepts in an ontology, we get a fully semantic description of the dataset.

The datamodel itself provides syntactic/numerical interoperability. The mappings enhances this with shared meaning enabling semantic interoperability.



### Links to an existing mappings

The dlite.dataset tests might be the best public examples
- https://github.com/SINTEF/dlite/blob/master/bindings/python/tests/test_dataset1_save.py
- https://github.com/SINTEF/dlite/blob/master/bindings/python/tests/test_dataset2_load.py

### Tools used for creating the mapping

The data models are implemented in the [DLite interoperability framework](https://github.com/SINTEF/dlite).


### Type of mapping relations

Main mapping relation: `rdfs:subClassOf`
Also used (for enhanced semantics): `emmo:isDescriptionFor`

### Examples (samples) of different types of mapping implementations

```turtle
@prefix fluid: <http://onto-ns.org/meta/dlite/0.1/FluidData#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix emmo: <https://w3id.org/emmo#> .

<http://onto-ns.org/meta/dlite/0.1/FluidData> emmo:isDescriptionFor emmo:Fluid .
fluid:LJPotential rdfs:subClassOf emmo:String .
fluid:LJPotential emmo:isDescriptionFor emmo:MolecularEntity .
fluid:TemperatureField rdfs:subClassOf emmo:ThermodynamicTemperature .

```

Here `http://onto-ns.org/meta/dlite/0.1/FluidData` is the IRI of the data model and `fluid:LJPotential` and `fluid:TemperatureField` are two of its properties.