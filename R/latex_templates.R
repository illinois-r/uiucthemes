#' UIUC Class Journal Format
#'
#' Modified version of the Journal of Statistical Software (JSS) Format
#' for creating a Journal of Statistical Software (JSS) articles. Adapted
#' from <https://www.jstatsoft.org/about/submissions>.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to `rmarkdown::pdf_document`
#'
#' @return R Markdown output format to pass to
#'   `rmarkdown::render`
#'
#' @details
#' This format is largely based off of the [`rticles`](https://github.com/rstudio/rticles)
#' of `jss_article`.
#'
#' @author
#' JSS Editorial Staff for the Journal format, RStudio for `jss_article`,
#' James Balamuta for the theme hook, and David Dalpiaz for skeleton content
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "latex_journal_format", package = "uiucthemes")
#' }
#'
#' @export
#' @references
#' [`rticles`](https://github.com/rstudio/rticles) package by JJ Allaire, R Foundation, Hadley Wickham, Journal of Statistical Software, Yihui Xie, Ramnath
#' Vaidyanathan, Association for Computing Machinery, Carl Boettiger, Elsevier, Karl Broman, Kirill
#' Mueller, Bastiaan Quast, Randall Pruim, Ben Marwick, Charlotte Wickham, Oliver Keyes and Miao Yu
#' (2017). rticles: Article Formats for R Markdown. R package version 0.4.1.
#' <https://CRAN.R-project.org/package=rticles>
latex_journal_format = function(..., keep_tex = TRUE, citation_package = 'natbib') {

  template = find_resource("latex_journal_format", "template.tex")

  base = inherit_pdf_document(
    ..., template = template, keep_tex = keep_tex, citation_package = citation_package
  )

  base$pandoc$toc = FALSE
  base$pandoc$number_sections = FALSE

  base$knitr$opts_chunk$prompt = FALSE   # changed from TRUE
  base$knitr$opts_chunk$comment = '# '   # default to one hashmark
  base$knitr$opts_chunk$highlight = TRUE # changed as well

  base$knitr$opts_chunk$dev.args = list(pointsize = 11)
  base$knitr$opts_chunk$fig.width = 4.9 # 6.125" * 0.8, as in template
  base$knitr$opts_chunk$fig.height = 3.675 # 4.9 * 3:4
  base$knitr$opts_chunk$fig.align = "center"

  load_resources_if_missing("latex_journal_format",
                            c("jss.cls", "jss.bst",
                              "stat-logo.png", "bibliography.bib"))

  base
}
