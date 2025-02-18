import os
import click
import frontmatter
import jinja2

from collections import defaultdict


@click.group()
def cli():
    """Main CLI group for the FAIR Mappings WG Toolkit."""
    pass  # Required for Click groups

# Jinja template for formatted case study content
CASE_STUDY_TEMPLATE = """<!-- DO NOT EDIT: This file is auto-generated. Any changes will be overwritten. -->

{% for tag in tags %}<span style="display:inline-block; background:#eee; color:#333; padding:4px 8px; border-radius:4px;">{{ tag }}</span> {% endfor %}

**Author:** {{ author }}  ({{ author_github }})

**Last updated:** {{ date }}  

**Mapping Type:** ![Mapping Type](https://img.shields.io/badge/{{ mapping_type }}-blue) 

**Status of this case study:** {% if status == "Draft" %}![Status](https://img.shields.io/badge/Draft-yellow){% else %}![Status](https://img.shields.io/badge/{{ status }}-blue){% endif %}

{{ content }}
"""

# Jinja template for the overview page
OVERVIEW_TEMPLATE = """<!-- DO NOT EDIT: This file is auto-generated. Any changes will be overwritten. -->

## Case Studies Overview

### Glossary

!!! warning

    Mapping type classifications and definitions on this page are preliminary and subject to change.

- **Schema Mapping**: A mapping between two or more schemas, such as a mapping between a relational database schema and an RDF ontology.
- **Entity Mapping**: A mapping between two or more entities, such as a mapping between two gene identifiers in two different databases.

{% for mapping_type, grouped_cases in cases_by_mapping_type.items() %}
### {{ mapping_type }}

{% for case in grouped_cases %}
#### [{{ case.title }}]({{ case.filename }})

- **Author:** {{ case.author }} ({{ case.author_github }})
- **Last updated:** {{ case.date }}
- **Status of this case study:** {% if case.status == "Draft" %}![Status](https://img.shields.io/badge/Draft-yellow){%- else %}![Status](https://img.shields.io/badge/{{ case.status }}-blue){% endif %}
- **Tags:** {{ case.tags | join(', ') }}

{% endfor %}
{% endfor %}
"""

@cli.command("document-case-studies")
@click.option("-c", "--case-study-dir", required=True, help="Directory containing case study Markdown files")
@click.option("-d", "--output-dir", required=True, help="Directory where generated files will be stored")
@click.option("-o", "--overview-file", required=True, help="Filename for the generated case study overview page")
def document_case_studies(case_study_dir, output_dir, overview_file):
    """Reads case studies, reformats frontmatter, and creates an overview page."""

    jinja_env = jinja2.Environment()
    case_study_template = jinja_env.from_string(CASE_STUDY_TEMPLATE)
    overview_template = jinja_env.from_string(OVERVIEW_TEMPLATE)

    # Ensure output directory exists
    os.makedirs(output_dir, exist_ok=True)

    cases_by_mapping_type = defaultdict(list)  # Store grouped metadata for overview

    for filename in os.listdir(case_study_dir):
        if filename.endswith(".md"):
            filepath = os.path.join(case_study_dir, filename)

            with open(filepath, "r", encoding="utf-8") as f:
                post = frontmatter.load(f)

            # Extract frontmatter data
            case_metadata = {
                "title": post.get("title", "Untitled"),
                "author": post.get("author", "Unknown"),
                "author_github": post.get("author_github", "Unknown"),
                "date": post.get("date", "Unknown"),
                "tags": post.get("tags", []),
                "category": post.get("category", "Uncategorized"),
                "status": post.get("status", "Draft"),
                "mapping_type": post.get("mapping_type", "Unknown"),
                "content": post.content,
            }
            output_path = os.path.join(output_dir, filename)
            last_dir = os.path.basename(os.path.dirname(output_path))

            case_metadata["filename"] = f"{last_dir}/{filename}"

            # Add case study to grouped dictionary
            cases_by_mapping_type[case_metadata["mapping_type"]].append(case_metadata)

            # Generate new case study markdown file
            with open(output_path, "w", encoding="utf-8") as out_file:
                out_file.write(case_study_template.render(case_metadata))

    # Generate the overview page
    with open(overview_file, "w", encoding="utf-8") as out_file:
        out_file.write(overview_template.render(cases_by_mapping_type=cases_by_mapping_type, now="2025-02-17"))

    click.echo(f"✅ Generated {sum(len(v) for v in cases_by_mapping_type.values())} case study files and an overview page: {overview_file}")


if __name__ == "__main__":
    cli()
