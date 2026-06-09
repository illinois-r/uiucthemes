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

The official Illinois marks are bundled with this package:

- `illinois-wordmark.png` — horizontal orange wordmark (title page).
- `illinois-wordmark-reverse.png` — reversed/white wordmark (blue frame-title bar).
- `illinois-blocki.pdf` — block-I (classic theme title slide).

The modern theme shows the wordmark on the title page and in each frame-title
bar; the classic theme places the block-I on the title slide. Use the
`nowordmark` option to suppress the modern theme's wordmarks, or redefine the
mark to substitute your own image:

```latex
\renewcommand{\insertillinoiswordmark}{\includegraphics[height=6mm]{your-logo}}
```

> **Trademark notice.** The Illinois wordmark and block-I are registered
> trademarks of the Board of Trustees of the University of Illinois and are
> included here with permission. They are *not* covered by the MIT license that
> governs the rest of this package; their use is subject to the University's
> brand and identity guidelines: <https://creativeservices.illinois.edu/brand/>.

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
| `illinois-wordmark.png`                | Orange horizontal wordmark               |
| `illinois-wordmark-reverse.png`        | Reversed/white horizontal wordmark       |
| `illinois-blocki.pdf`                  | Block-I logo                             |
| `illinois-demo.tex`                    | Demo / reference deck (modern)           |
| `illinoisclassic-demo.tex`             | Demo deck (classic)                      |

Build the demos with `pdflatex illinois-demo.tex` (run twice so the footline
frame totals settle).

## License

The theme code is released under the MIT License. See [`LICENSE`](LICENSE).
The bundled University of Illinois marks are trademarks of the University,
included with permission, and are governed by the University's brand guidelines
rather than the MIT license (see the trademark notice above).

## Author

James Joseph Balamuta, with contributions from Steven Andrew Culpepper,
David Dalpiaz, and Jose Luis Rodriguez. Reported issues and contributions are
welcome at <https://github.com/illinois-r/uiucthemes>.
