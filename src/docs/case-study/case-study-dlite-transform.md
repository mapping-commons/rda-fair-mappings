---
title: "DLITE Transformation Case Study"
author: "Jesper Friis"
author_github: "@jesper-friis"
date: "2025-03-17"
tags:
  - Semantic interoperability
category: "Case Studies"
mapping_type: "TBD"
status: "Draft"
---

Semantic transformations.

### Domain

Any applied scientific domain dealing with semantic data.

### Purpose of the mapping

Semantic interoperability

### Other purpose of the mapping

Can also be used for data integration.

### Type of mapped resources

By combining the the use case of [Semantic mappings of datamodels](https://github.com/mapping-commons/rda-fair-mappings/issues/2)  with mappings of input and output of *mapping functions* to ontological concepts, it is possible to obtain semantically driven data transformations.

The figure below shows three datamodels and three mapping functions that are all mapped to ontological concepts.

![mappings](https://github.com/user-attachments/assets/eb66235d-12a5-4bac-9608-457260500ee4)
**Figure 1**. Example of semantic transformations.

Lets assume that we have instances of the `Structure` and `CalcResults` datamodels (named `C3H6` and `C3H6_result` in the figure). Given that it is possible to ask a semantic system to instantiate an instance of the `Molecule` datamodel. If the system can find a route from the properties of the `Molecule` datamodel, via the mappings and mapping functions, to existing data, it will be able to return a `Molecule` instance.

This is a very powerful use of semantic mappings that enables seamless data integration. It allows independent data providers document their datasets by creating datamodels for them and map them to ontologies. An data consumer can then document what data he/she needs by creating a datamodel for that and map it to the ontologies. With support from an ontologist that may provide generic mapping functions enabling generic transformations between individuals of different ontological concepts, the data consumer is then able to get a selection of the available data represented in the form he/she needs it in. Note that the data consumer does not need to know anything about the structure of the existing datasets.

### Links to an existing mappings

An implementation of semantic transformations is available on https://github.com/SINTEF/dlite/tree/master/examples/mappings
Note that the mappings does not necessary have to be complete in order to be useful. In this example the mappings are entered progammaticrally in Python, but under the hood are they stored in the knowledge base as a set of RDF triples of the form:

    <source IRI> refs:subClassOf <target IRI> .

Hence, it is easy to enter the mappings in a declarative way.

### Tools used for creating the mapping

[DLite](https://github.com/SINTEF/dlite) and [Tripper](https://github.com/EMMC-ASBL/tripper)

### Type of mapping relations

Main mapping relation: rdfs:subClassOf

**Note**: Before we used the non-standard `map:mapsTo` relation. This relation may still be seen in examples.

### Examples (samples) of different types of mapping implementations

Mapping the data models may look like this:

```
@prefix struct: <http://onto-ns.org/meta/dlite/0.1/Structure#> .
@prefix cr: <http://onto-ns.org/meta/dlite/0.1/CalcResult#> .
@prefix mol: <http://onto-ns.org/meta/dlite/0.1/Molecule#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix emmo: <https://w3id.org/emmo#> .
@prefix don: <http://example.com/demo-ontology#> .

struct:symbols rdfs:subClassOf don:ChemicalSymbol .
cr:potential_energy rdfs:subClassOf emmo:PotentialEnergy .
cr:forces rdfs:subClassOf emmo:Force .
mol:formula rdfs:subClassOf emmo:ChemicalFormula .
mol:energy rdfs:subClassOf emmo:PotentialEnergy .
mol:maxforce rdfs:subClassOf don:MaxForce .
```

The mappings for the mapping functions are typically generated via the [Tripper](https://github.com/EMMC-ASBL/tripper) API, and are therefore not shown here.