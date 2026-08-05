# FAIR Mapping Best Practices

This page collects practical patterns we encountered while implementing the case studies. It is not normative — these are working notes that complement the formal [recommendations](recommendation.md). Each section captures a problem the case studies surfaced and a proposed approach, often with caveats and pointers to experimental tooling.

## Mapping to ontology axioms (not just to named classes)

### The problem

Several case studies (most clearly [BFO-PROV](case-study/case-study-bfoprov.md)) align a source class to a *complex OWL class expression* on the target side rather than to a single named class. For example, the alignment of `prov:Agent` is not `prov:Agent skos:exactMatch bfo:NamedClass` but rather an `owl:equivalentClass` to an anonymous intersection with property restrictions. SSSOM, by design, has a flat row shape: `subject_id`, `predicate_id`, `object_id`. There is no agreed way to put an axiom (an anonymous OWL class expression) into the `object_id` cell.

In practice, projects work around this in three unsatisfactory ways:

- They ship an OWL/TTL artefact alongside the SSSOM and treat the SSSOM as a lossy projection (the BFO-PROV approach).
- They drop the complex mappings from the SSSOM entirely.
- They invent project-local conventions that do not survive being shared.

### An experimental approach: URI Expressions

The [URI Expression Language](https://github.com/monarch-initiative/uri-expression-language) is a draft proposal for encoding small, structured expressions inside a single IRI. It lets you write something resembling an OWL class expression as a URI that can sit in an SSSOM `object_id` cell. There is an experimental implementation in the SSSOM-Java toolkit: [`sssom-ext` URI Expression extension](https://incenp.org/dvlpt/sssom-java/sssom-ext/sssomt-uriexpr.html).

!!! warning "Highly experimental"
    URI Expressions are not part of the SSSOM specification, are not implemented in `sssom-py`, and the syntax is still evolving. Do not use this in production mapping sets you expect external consumers to parse without coordination. Treat this as a research direction, not a recommended practice.

### Trying it on BFO-PROV — it works

We ran the experiment on three complex axioms from `prov-bfo-directmappings.ttl`:

| PROV class | Original axiom (informal) |
|---|---|
| `prov:Entity`    | `(independent_continuant and not spatial_region) or gdc or sdc` |
| `prov:Agent`     | `material and (participates_in some Activity) and (bearer_of some (role and (realized_in some Activity)))` |
| `prov:Influence` | `(process or process_boundary) and not (process and process_boundary)` |

Each axiom shape was registered as a URI Expression schema in a SSSOM/T-OWL ruleset, and each row's `object_id` carries a URI Expression of the form `bfopx:<schema>/(slot:'CURIE',…)`. A single `create_axiom` rule then expands every row into a Manchester-syntax SubClassOf axiom.

The full reproducible test lives at [`src/case-study-implementations/bfoprov/axioms/`](https://github.com/mapping-commons/rda-fair-mappings/tree/main/src/case-study-implementations/bfoprov/axioms): three input files (`axiom-mappings.sssom.tsv`, `uriexpr.sssomt`, `seed.ofn`) plus a `run.sh` that downloads the right ROBOT and the `sssom-robot-plugin` jar and invokes `robot sssom:inject --ruleset uriexpr.sssomt …`.

The generated `generated-axioms.ofn` contains exactly the three OWL axioms we wanted, semantically isomorphic to the originals. ROBOT's ELK reasoner accepts the file without error.

Open questions this raises for the FAIR Mappings spec:

- How should the FAIR Mappings Schema declare that a mapping set uses URI Expression encoding? A dedicated `mapping_method` value or a new `predicate_modifier` would make the encoding self-describing.
- How should downstream consumers that do not understand URI Expressions handle these rows? Currently they would treat the `object_id` as an opaque IRI — sound but unhelpful.
- Whether the URI Expression schemas themselves (the templates) should travel with the mapping set, e.g. as a sibling SSSOM/T file or embedded in a mapping-set-level extension slot.

The atomic SSSOM in `casestudy.sssom.tsv` and the experimental URI Expression SSSOM in `axioms/axiom-mappings.sssom.tsv` are kept as separate artefacts so that consumers can opt in to the experimental encoding without it polluting the conservative subset.
