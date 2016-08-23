# UIUC Themes for R Markdown (`uiucthemes`)

The **uiucthemes** package includes my collection of UIUC themed templates.

## Materials Referenced

- [Custom Document Templates](http://rmarkdown.rstudio.com/developer_document_templates.html) / [Custom Formats](http://rmarkdown.rstudio.com/developer_custom_formats.html)
- [Beamer Presentation Format](http://rmarkdown.rstudio.com/beamer_presentation_format.html)
- [Beamer Pandoc Template](https://github.com/jgm/pandoc-templates/blob/master/default.beamer)
- [`rticles` An R Package](https://github.com/rstudio/rticles)

### Prerequisites

- LaTeX Distribution
   - Windows: <http://http://miktex.org/download>
   - Mac: <http://tug.org/mactex/mactex-download.html>
   
### Using `uiucthemes` from RStudio

To use **uiucthemes** from RStudio:

1) Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).

2) Install the **uiucthemes** package: 

```r
install.packages("devtools")
devtools::install_github("coatless/uiucthemes")
```

3) Use the **New R Markdown** dialog to create an article from one of the templates:

![New R Markdown](uiucthemes.png)
    
    
### Using `uiucthemes` outside of RStudio

1) Install [pandoc](http://johnmacfarlane.net/pandoc/) using the [instructions for your platform](https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md).

2) Install the **rmarkdown** and **uiucthemes** packages:

```r
install.packages("rmarkdown")
devtools::install_github("coatless/uiucthemes")
```
    
3) Use the `rmarkdown::draft` function to create articles:

```r
rmarkdown::draft("MyThesis.Rmd", template = "uiuc_beamer", package = "uiucthemes")
```

