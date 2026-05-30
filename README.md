# MkDocs Material Documentation

A [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) documentation site with **Mermaid diagrams**, **Material icons**, **grid cards**, and other common configuration fixes.

## Quick Start

```bash
# Install dependencies
pip install -r requirements.txt

# Run locally
mkdocs serve
# → http://127.0.0.1:8000

# Build for production
mkdocs build
```

## What's included

| Extension | Purpose |
|-----------|---------|
| `mermaid2` plugin | Mermaid diagrams (flowcharts, sequence, ER, Gantt) |
| `md_in_html` | Markdown inside HTML `<div>` blocks (grid cards with icons) |
| `attr_list` | HTML attributes on elements (icon sizing) |
| `pymdownx.emoji` | `:material-icon-name:` syntax |
| `pymdownx.superfences` | Fenced code + custom fences |
| `pymdownx.tabbed` | Tabbed content blocks |
| `admonition` + `pymdownx.details` | Notes, warnings, collapsible sections |
| `pymdownx.highlight` | Syntax highlighting with line numbers |

## Project structure

```
.
├── mkdocs.yml              # Main config
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
