# UIUC Quarto Beamer Themes

This directory contains example decks for the standalone [Quarto](https://quarto.org)
Beamer themes shipped in [`_extensions/`](../_extensions). They are a port of the
`beamer_*` RMarkdown templates from the `uiucthemes` R package, so you get the same
University of Illinois Urbana-Champaign (UIUC) look in a pure-Quarto workflow — no R
package required.

| Extension          | Format reference          | Based on (RMarkdown)  | Look                                            |
| ------------------ | ------------------------- | --------------------- | ----------------------------------------------- |
| `uiuc-metropolis`  | `uiuc-metropolis-beamer`  | `beamer_imetropolis`  | Modern Metropolis theme recolored for Illinois  |
| `uiuc-illinois`    | `uiuc-illinois-beamer`    | `beamer_illinois`     | Classic Illinois blue/orange header boxes       |
| `uiuc-orange`      | `uiuc-orange-beamer`      | `beamer_orange`       | Minimalist, orange-forward                       |

## Prerequisites

- [Quarto](https://quarto.org/docs/get-started/) (>= 1.3)
- A LaTeX installation. The easiest is `quarto install tinytex`.
- The `uiuc-metropolis` theme renders best with XeLaTeX (configured by default) and
  the [Fira](https://github.com/matze/mtheme) fonts used by the Metropolis theme.

## Install the themes into your own project

From the root of your Quarto project:

```bash
quarto add illinois-r/uiucthemes
```

This installs all three Beamer themes into your project's `_extensions/` directory.

## Use a theme

Set the `format` in your document's YAML front matter to one of the format
references above:

```yaml
---
title: "My Talk"
author: "Your Name"
institute: "University of Illinois Urbana-Champaign"
format: uiuc-metropolis-beamer
---
```

Then render:

```bash
quarto render my-talk.qmd
```

## Rendering the examples in this repository

The repository root contains a `_quarto.yml` so the example decks can find the
themes in `_extensions/` without installing them:

```bash
quarto render examples/uiuc-metropolis.qmd
quarto render examples/uiuc-illinois.qmd
quarto render examples/uiuc-orange.qmd
```
