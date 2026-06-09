# The `illinois` beamer theme

A University of Illinois Urbana-Champaign (UIUC) themed package for the
[`beamer`](https://ctan.org/pkg/beamer) presentation class. It provides two
self-contained themes that follow the official Illinois color identity:

| `\usetheme{...}`      | Look                                                              |
| --------------------- | ---------------------------------------------------------------- |
| `illinois`            | Modern, flat design: a colored frame-title bar, sans-serif type, an orange accent rule, minimal footline, and automatic section slides. |
| `illinoisclassic`     | Traditional `infolines`-style blue/orange header and footer bars with colored block boxes. |

Both themes are LaTeX ports of the Beamer templates in the
[`uiucthemes`](https://github.com/illinois-r/uiucthemes) R package, so the same
look is available directly in plain LaTeX with no R or Quarto required.

## Requirements

The package is self-contained and depends only on facilities already loaded by
`beamer`: `xcolor`, `graphicx`, and `hyperref`. Any reasonably modern TeX
distribution (TeX Live, MiKTeX) will work, with `pdflatex`, `xelatex`, or
`lualatex`.

## Installation

### From CTAN / your TeX distribution

Once distributed through CTAN, install via your TeX package manager
(e.g. `tlmgr install illinois`).

### Manual / local installation

Copy the `.sty` files into your project directory, or into your local
`texmf` tree:

```
$(kpsewhich -var-value TEXMFHOME)/tex/latex/illinois/
```

then run `texhash` (TeX Live) if you installed into a texmf tree.

## Usage

```latex
\documentclass{beamer}
\usetheme{illinois}        % or \usetheme{illinoisclassic}

\title{My Talk}
\subtitle{An Illinois-themed deck}
\author{Your Name}
\institute[UIUC]{University of Illinois Urbana-Champaign}
\date{\today}

\begin{document}
\frame{\titlepage}

\section{Introduction}
\begin{frame}{Hello}
  \begin{block}{A block}
    Content goes here.
  \end{block}
\end{frame}
\end{document}
```

### Options (modern `illinois` theme)

| Option            | Effect                                                       |
| ----------------- | ------------------------------------------------------------ |
| `nowordmark`      | Do not print the typographic "Illinois" wordmark on the title page. |
| `nosectionpages`  | Do not insert an automatic section-title slide at each `\section`. |

```latex
\usetheme[nosectionpages]{illinois}
```

## The University logo / wordmark

The official Illinois wordmark and block-I are **registered trademarks of the
University of Illinois** and are therefore *not* bundled with this package. By
default the modern theme renders a plain typographic "Illinois" wordmark on the
title page. If you are authorized to use the official mark, drop it in locally:

```latex
\renewcommand{\insertillinoiswordmark}{\includegraphics[height=6mm]{your-logo}}
```

University brand assets and usage guidelines are available at
<https://creativeservices.illinois.edu/brand/>.

## Files

| File                                   | Purpose                                  |
| -------------------------------------- | ---------------------------------------- |
| `beamerthemeillinois.sty`              | Modern theme entry point                 |
| `beamercolorthemeillinois.sty`         | UIUC color palette (shared base)         |
| `beamerfontthemeillinois.sty`          | Font theme                               |
| `beamerinnerthemeillinois.sty`         | Blocks, lists, title page                |
| `beamerouterthemeillinois.sty`         | Frame-title bar, footline, no navigation |
| `beamerthemeillinoisclassic.sty`       | Classic theme entry point                |
| `beamercolorthemeillinoisclassic.sty`  | Classic color theme                      |
| `illinois-demo.tex`                    | Demo / reference deck (modern)           |
| `illinoisclassic-demo.tex`             | Demo deck (classic)                      |

Build the demos with `pdflatex illinois-demo.tex` (run twice so the footline
frame totals settle).

## License

Released under the MIT License. See [`LICENSE`](LICENSE).

## Author

James Joseph Balamuta, with contributions from Steven Andrew Culpepper,
David Dalpiaz, and Jose Luis Rodriguez. Reported issues and contributions are
welcome at <https://github.com/illinois-r/uiucthemes>.
