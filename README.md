
[![Travis-CI Build Status](https://travis-ci.org/coatless/uiucthemes.svg?branch=master)](https://travis-ci.org/coatless/uiucthemes) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/uiucthemes)](https://cran.r-project.org/package=uiucthemes)

UIUC Themes for R Markdown (`uiucthemes`)
=========================================

The **uiucthemes** package includes my collection of UIUC themed templates.

Presently, only the UIUC Beamer Theme is embedded within the package.

UIUC Beamer Theme - Example
---------------------------

Within an `RMarkdown` file, add the following:

``` yaml
---
title: "UIUC Beamer Theme"
short-title: "Beamer Slides"
author: "John and Mary Doe"
short-author: "J & M Doe"
date: 'January 26, 2017'      # Month DD, YYYY (Main Slide)
short-date: '01/26/2017' # MM/DD/YYYY (Lower Right)
institute: "University of Illinois at Urbana-Champaign"
short-institute: "UIUC"
department: "Department of Magic"                # Institute must be defined
license: "Did you license this slide deck? "
section-titles: false                            # Provides slide headings
safe-columns: true                               # Enables special latex macros for columns.
output: 
   uiucthemes::uiuc_beamer
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
2. <http://smac-group.com>


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

### Redux \LaTeX 

This theme supports special LaTeX macros `\beingcols` and `\endcols` that allows
for markdown to be blended with LaTeX without triggering the [`raw_tex`](http://pandoc.org/MANUAL.html#raw-tex) 
extension. To enable this feature, the `safe-columns` key in the YML head matter
must be set equal to `true`.

\begincols

\column{.49\linewidth}

- _Hello!_

\column{.49\linewidth}

1. **Goodbye!**

\endcols
```

**Note: You will also need to save the [`ilogo.pdf` file](https://github.com/coatless/uiucthemes/blob/master/inst/rmarkdown/templates/uiuc_beamer/skeleton/ilogo.pdf) to the folder with the RMarkdown document**. The need for this is negated under the instructions given at the end (RStudio creation & using `rmarkdown::draft()`.

This generates:

![](uiuc_beamer_slide_example.png)

Materials Referenced
--------------------

-   [Custom Document Templates](http://rmarkdown.rstudio.com/developer_document_templates.html) / [Custom Formats](http://rmarkdown.rstudio.com/developer_custom_formats.html)
-   [Beamer Presentation Format](http://rmarkdown.rstudio.com/beamer_presentation_format.html)
-   [Beamer Pandoc Template](https://github.com/jgm/pandoc-templates/blob/master/default.beamer)
-   [`rticles` An R Package](https://github.com/rstudio/rticles)

### Prerequisites

-   LaTeX Distribution
-   Windows: <http://miktex.org/download>
-   Mac: <http://tug.org/mactex/mactex-download.html>

### Using `uiucthemes` from RStudio

To use **uiucthemes** from RStudio:

1.  Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).

2.  Install the **uiucthemes** package:

``` r
install.packages("devtools")
devtools::install_github("rstudio/rmarkdown")
devtools::install_github("coatless/uiucthemes")
```

1.  Use the **New R Markdown** dialog to create an article from one of the templates:

![New R Markdown](uiucthemes.png)

### Using `uiucthemes` outside of RStudio

1.  Install [pandoc](http://johnmacfarlane.net/pandoc/) using the [instructions for your platform](https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md).

2.  Install the **rmarkdown** and **uiucthemes** packages:

``` r
install.packages("devtools")
devtools::install_github("rstudio/rmarkdown")
devtools::install_github("coatless/uiucthemes")
```

1.  Use the `rmarkdown::draft` function to create articles:

``` r
rmarkdown::draft("slide_deck.Rmd", template = "uiuc_beamer", package = "uiucthemes")
```
