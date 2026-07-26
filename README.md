# MkDocs Material Documentation

A [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) documentation site with **Mermaid diagrams**, **Material icons**, **grid cards**, and other common configuration fixes — styled with the **CalmKit** design language.

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

## The CalmKit design language

CalmKit is a design system built for an ADHD focus tool, where an aggressive interface is not a
style choice but a cost. Its central rule: a theme may change the **look** and nothing else — it
may not make the interface louder, faster, or more alarming.

It lives in one file, `docs/stylesheets/calmkit.css`. See
[the Design System page](docs/design-system/calmkit.md) for the full write-up; the short version:

- **`!!! danger` is soft coral, not alarm red.** Material ships `#ff1744`. CalmKit forbids alarm
  red for anything a reader has to *interpret*, because red says *you failed*. This is the one
  override in the file that is not taste.
- **Every colour is derived, not picked.** Each was moved toward black or white by the smallest
  amount that clears its WCAG ratio, with the measured ratio recorded beside it. The coral needs 4%
  darkening; the amber needs 24%. One correction sized for the worst case would turn a soft coral
  into a brick red.
- **`font: false`.** No Roboto from Google Fonts — one less third-party request, and the docs render
  in the same rounded system stack the product uses rather than documenting one typeface while
  displaying another.
- **The palette follows the OS appearance**, with a toggle to override. Material's default is
  toggle-only, which ignores a preference the reader already expressed.
- **Reduce Motion is a hard off**, applied at the top level so it covers Material's own transitions
  too. A reader who asked for no motion shouldn't have to trust that every rule remembered.

`primary` and `accent` are deliberately absent from the palette config: the stylesheet sets
`--md-primary-fg-color` and friends, so a named colour there would be dead config that looks
authoritative.

### Making it yours

Swap the five tokens at the top of `calmkit.css` — but **re-derive the corrected values if you do**.
The `#297CB1` header and the per-admonition colours are specific to these hues; carrying them to a
different palette keeps the arithmetic and loses the guarantee.

To drop it entirely: remove the `extra_css` entry, delete `font: false`, and put `primary`/`accent`
back in the palette. Nothing else depends on it.

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
    ├── design-system/
    │   └── calmkit.md      # The design language, rendered by the stylesheet it documents
    ├── examples/
    │   ├── mermaid-diagrams.md
    │   └── components.md
    └── stylesheets/
        └── calmkit.css     # The whole design language, one file
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
