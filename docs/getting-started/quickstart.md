# Quickstart

## Installation

=== "pip"

    ```bash
    pip install mkdocs-material mdx-mermaid
    ```

=== "Homebrew"

    ```bash
    brew install mkdocs-material
    ```

## Create a new project

```bash
mkdocs new my-project
cd my-project
```

## Copy the starter config

Copy `mkdocs.yml` and the `docs/` directory into your project root.

## Run locally

```bash
mkdocs serve
```

Open [http://127.0.0.1:8000](http://127.0.0.1:8000) in your browser.

## Build for production

```bash
mkdocs build
```

The static site is output to the `site/` directory.

!!! tip "Deploy to GitHub Pages"
    ```bash
    mkdocs gh-deploy
    ```
