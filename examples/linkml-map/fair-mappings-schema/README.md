# Converting Mapping Metadata to FAIR Mappings Schema

This folder shows how to extract descriptive information (metadata) from mapping files and convert it into a standard format.

## The problem

When researchers create mappings between datasets or vocabularies, they use different tools and formats. Each format stores information differently, making it hard to:

- Find mappings that might be useful for your work
- Compare mappings from different sources
- Understand who created a mapping and whether you can trust it

## The solution

The **FAIR Mappings Schema** provides a common way to describe mappings. Think of it like a library catalogue card - it doesn't contain the book itself, just enough information to find and evaluate it.

These examples show how to automatically extract this "catalogue card" information from two popular mapping formats.

## What information gets extracted?

The transformation pulls out descriptive metadata like:

| Information | Why it matters |
|-------------|----------------|
| Title and description | Understand what the mapping does |
| Creator and author | Know who to contact or credit |
| Publication date and version | Check if it's current |
| License | Know if you can reuse it |
| Source and target | See what datasets/vocabularies are connected |

## What is NOT extracted?

The actual mapping rules themselves stay in their original files. Why?

- The original format is designed to run those mappings
- FAIR Mappings Schema is for *describing* mappings, not *executing* them
- You can always go back to the original file when you need to use the mapping

## The two examples

### 1. LinkML-Map specification → FAIR Mappings

**Input**: `data/sample-linkmlmap-spec.yaml`
A file that describes how to transform data from one structure to another.

**Output**: `linkmlmap-fair-mappings.yaml`
Just the metadata: title, description, who made it, what it connects.

### 2. SSSOM mapping set → FAIR Mappings

**Input**: `data/sample-sssom-mapping-set.yaml`
A file containing term-to-term correspondences between two vocabularies (e.g., "diabetes" in one vocabulary equals "diabetes mellitus" in another).

**Output**: `sssom-fair-mappings.yaml`
Just the metadata: title, description, which vocabularies, who curated it.

## Running the examples

From the repository root directory:

```bash
make -f examples.Makefile fair-mappings-transforms
```

## File overview

```
data/                          Input files (example mappings)
transform/                     Transformation rules
*.yaml (in root)               Output files (extracted metadata)
```

## Why does this matter?

Having mapping metadata in a standard format enables:

- **Search**: Build catalogues of available mappings
- **Trust**: See provenance and authorship at a glance
- **Reuse**: Quickly assess if a mapping fits your needs
- **Citation**: Properly credit mapping creators

The mappings themselves remain in their original format, ready to be used by the appropriate tools.
