# MkDocs Material Starter

A ready-to-use [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) template with **Mermaid diagrams**, **Material icons**, **grid cards**, and other common gotchas already fixed.

## Why this exists

The official MkDocs Material docs have several configuration gotchas that break silently:

1. **Mermaid format function** — `pymdownx.superfences.fence_mermaid` does NOT work. You must use `!!python/name:mermaid2.fence_mermaid`.
2. **Grid cards with icons** — `:material-icon:{ .lg .middle }` inside `<div class="grid cards" markdown>` requires the `md_in_html` extension.
3. **Icon syntax** — Material icons require the `pymdownx.emoji` extension with the correct `emoji_index` and `emoji_generator`.

This template has all of these pre-configured so you can start writing docs immediately.

## Quick Start

```bash
# 1. Clone or use as template
git clone https://github.com/YOUR_USERNAME/mkdocs-material-starter.git
cd mkdocs-material-starter

# 2. Install dependencies
pip install -r requirements.txt

# 3. Run locally
mkdocs serve
# → http://127.0.0.1:8000

# 4. Build for production
mkdocs build
```

## What's included

### Extensions (all pre-configured and working)

| Extension | Purpose | Common gotcha |
|-----------|---------|---------------|
| `mermaid2` plugin + `!!python/name:mermaid2.fence_mermaid` | Mermaid diagrams | Wrong format function silently breaks diagrams |
| `md_in_html` | Markdown inside HTML `<div>` blocks | Required for grid cards with icons |
| `attr_list` | HTML attributes on elements | Required for icon sizing `.lg .middle` |
| `pymdownx.emoji` | `:material-icon-name:` syntax | Missing = raw text instead of icons |
| `pymdownx.superfences` | Fenced code + custom fences | Umbrella for mermaid fences |
| `pymdownx.tabbed` | Tabbed content blocks | |
| `admonition` + `pymdownx.details` | Notes, warnings, collapsible sections | |
| `pymdownx.highlight` | Syntax highlighting with line numbers | |

### Sample pages

- **Home** — Grid cards with Material icons
- **Quickstart** — Tabbed install instructions, admonitions
- **Architecture** — Flowchart + sequence diagram + table
- **Mermaid Diagrams** — Flowchart, sequence, state, ER, Gantt
- **Components** — Admonitions, grids, tabs, code blocks, tables

## Project structure

```
.
├── mkdocs.yml              # Main config (all fixes baked in)
├── requirements.txt        # Python dependencies
├── Makefile                # Convenience commands
├── .gitignore
└── docs/
    ├── index.md
    ├── getting-started/
    │   └── quickstart.md
    ├── architecture/
    │   └── overview.md
    └── examples/
        ├── mermaid-diagrams.md
        └── components.md
```

## Usage for your own project

1. **Replace `mkdocs.yml` metadata** — Update `site_name`, `site_url`, `repo_url`, and `nav`.
2. **Replace `docs/` content** — Delete sample pages, add your own.
3. **Keep the `mkdocs.yml` extensions section as-is** — This is where the bugs are fixed.

## Makefile commands

```bash
make serve    # Start dev server (http://127.0.0.1:8000)
make build    # Build static site to site/
make deploy   # Deploy to GitHub Pages
make clean    # Remove build artifacts
make install  # Install Python dependencies
```

## Requirements

- Python 3.8+
- pip

## License

MIT
