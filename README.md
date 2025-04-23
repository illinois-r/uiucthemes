
# UIUC Themes for R Markdown (`uiucthemes`)

<!-- badges: start -->

[![R build
status](https://github.com/coatless/uiucthemes/workflows/R-CMD-check/badge.svg)](https://github.com/illinois-r/uiucthemes/actions)
[![Package-License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat)](https://opensource.org/licenses/MIT)
[![CRAN Version
Badge](http://www.r-pkg.org/badges/version/uiucthemes)](https://cran.r-project.org/package=uiucthemes)
[![CRAN
Status](https://badges.cranchecks.info/worst/uiucthemes.svg)](https://cran.r-project.org/web/checks/check_results_uiucthemes.html)
[![CRAN RStudio mirror
downloads](http://cranlogs.r-pkg.org/badges/uiucthemes)](https://www.r-pkg.org:443/pkg/uiucthemes)
[![CRAN
status](https://www.r-pkg.org/badges/version/uiucthemes)](https://CRAN.R-project.org/package=uiucthemes)
<!-- badges: end -->

The `uiucthemes` package includes a collection of UIUC-themed templates
for presentations, journal articles, and exam templates.

Included in the package are:

- `beamer_illinois`: Illinois colored header boxes
- `beamer_orange`: Minimialist slides with a color preference to orange.
- `beamer_mil`: Beamer Market Information Lab (MIL)
- `beamer_imetropolis`: Metropolis Theme with Illinois colors for
  Beamer.
- `html_imetropolis`: `xaringan`-powered Metropolis Theme for Illinois.
- `latex_journal_report`: initial implementation of a journal entry for
  a class.

Screenshots of each template are included in package overview vignette.

## `beamer_illinois` - Example

Within an `RMarkdown` file, add the following:

``` md
---
title: '"Illinois" UIUC Beamer Theme'
short-title: "Beamer Slides"
author: "John and Mary Doe"
short-author: "J & M Doe"
date: 'April 22, 2025'      # Month DD, YYYY (Main Slide)
short-date: '04/22/2025' # MM/DD/YYYY (Lower Right)
institute: "University of Illinois at Urbana-Champaign"
short-institute: "UIUC"
department: "Department of Magic"                # Institute must be defined
license: "Did you license this slide deck? "
section-titles: false                            # Provides slide headings
safe-columns: true                               # Enables special latex macros for columns.
output: 
   uiucthemes::beamer_illinois
---

# Section title     
## Subsection title 

### Frame Title

Frame content 

**Unordered List**

- [University of Illinois at Urbana-Champaign (UIUC)](http://illinois.edu)
- [Department of Statistics](http://www.stat.illinois.edu/)
- [Illinois Informatics Institute](http://www.informatics.illinois.edu/)

*Ordered List*

1. <http://thecoatlessprofessor.com>
2. <https://github.com/coatless>


#### Title for block box

Content inside of a box 

### \LaTeX

\begin{exampleblock}{Binomial Theorem}
\begin{equation} 
  f\left(k\right) = \binom{n}{k} p^k\left(1-p\right)^{n-k}
  \label{eq:binom}
\end{equation} 
\end{exampleblock}

Hello Equation \ref{eq:binom}
```

This generates:

![](https://raw.githubusercontent.com/illinois-r/uiucthemes/main/tools/readme/beamer_illinois_slide_example.png)

## Materials Referenced

- [Custom Document
  Templates](https://bookdown.org/yihui/rmarkdown/document-templates.html)
  / [Custom
  Formats](https://bookdown.org/yihui/rmarkdown/new-formats.html)
- [Beamer Presentation
  Format](https://bookdown.org/yihui/rmarkdown/beamer-presentation.html)
- [LaTeX Generic Pandoc
  Template](https://github.com/jgm/pandoc-templates/blob/db59a5e77b0a5629f0801eb82103814842f2e2ed/default.latex)
- [`rticles` An R Package](https://github.com/rstudio/rticles)

### Prerequisites

- LaTeX Distribution
  - Windows: <https://miktex.org/download>
  - Mac: <https://tug.org/mactex/mactex-download.html>

### Using `uiucthemes` from RStudio

To use **uiucthemes** from RStudio:

1)  Install the latest
    [RStudio](https://posit.co/download/rstudio-desktop/).

2)  Install the **uiucthemes** package:

``` r
install.packages(c("rmarkdown","uiucthemes"))
```

3)  Use the **New R Markdown** dialog to create an article from one of
    the templates:

<figure>
<img
src="https://raw.githubusercontent.com/illinois-r/uiucthemes/main/tools/readme/uiucthemes.png"
alt="New R Markdown" />
<figcaption aria-hidden="true">New R Markdown</figcaption>
</figure>

### Using `uiucthemes` outside of RStudio

1)  Install [pandoc](https://johnmacfarlane.net/pandoc/) using the
    [instructions for your
    platform](https://github.com/rstudio/rmarkdown/blob/bd5c509c888bfd309ef059ae6cbdeb408ec53d66/vignettes/pandoc.Rmd).

2)  Install the **rmarkdown** and **uiucthemes** packages:

``` r
install.packages(c("rmarkdown","uiucthemes"))
```

3)  Use the `rmarkdown::draft` function to create articles:

``` r
rmarkdown::draft("slide_deck.Rmd", template = "beamer_illinois", package = "uiucthemes")
```

### Using a development version of `uiucthemes`

To access the development version of `uiucthemes`, e.g. not on CRAN,
please use:

``` r
if(!requireNamespace("remotes")) { install.packages("remotes") }
remotes::install_github("coatless/uiucthemes")
```

## Authors

James Joseph Balamuta with contributions from Steven Andrew Culpepper,
David Dalpiaz, and Jose Luis Rodriguez.

## Citing the `uiucthemes` package

To ensure future development of the package, please cite `uiucthemes`
package if used for a presentation. Citation information for the package
may be acquired by using in *R*:

``` r
citation("uiucthemes")
```

## License

MIT - James Joseph Balamuta
