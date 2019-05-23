#' Creates an R Markdown PDF Thesis document in the Style of the ECE Department
#' at UIUC
#'
#' Processes the R Markdown file using the appropriate ECE PDF template.
#'
#' @param toc_depth Depth shown in table of contents. Must be a positive integer.
#' @param highlight Syntax highlighting style. Supported styles include:
#'                  "default", "tango", "pygments", "kate", "monochrome",
#'                  "espresso", "zenburn", and "haddock". Pass `NULL`
#'                   to prevent syntax highlighting.
#' @param ... Additional parameters passed to [bookdown::pdf_book()].
#'
#' @return
#' A modified \code{pdf_document} that uses the ECE Department style at UIUC.
#'
#' @references
#'
#' - [`thesisdown::thesis_pdf`](https://github.com/ismayc/thesisdown) by Chester Ismay
#'     - The _R_ function is largely based off of this format.
#' - [ECE Department Thesis LaTeX Template](https://wiki.illinois.edu/wiki/display/ECEThesisReview/LaTeX+Resources)
#'     - The `template.tex` uses the shell.
#'
#' @export
#' @examples
#' \dontrun{
#'  output: uiucthemes::thesis_pdf_ece
#' }
thesis_pdf_ece <- function(toc_depth = 3, highlight = "default", ...){

  base <- bookdown::pdf_book(template = "template.tex",
                             toc = TRUE,
                             toc_depth = toc_depth,
                             highlight = highlight,
                             keep_tex = TRUE,
                             pandoc_args = "--top-level-division=chapter",
                             ...)

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_chunk$comment <- NA
  #base$knitr$opts_chunk$fig.align <- "center"

  old_opt <- getOption("bookdown.post.latex")
  options(bookdown.post.latex = fix_envs)
  on.exit(options(bookdown.post.late = old_opt))

  base

}


fix_envs = function(x){
  beg_reg <- '^\\s*\\\\begin\\{.*\\}'
  end_reg <- '^\\s*\\\\end\\{.*\\}'
  i3 = if (length(i1 <- grep(beg_reg, x))) (i1 - 1)[grepl("^\\s*$", x[i1 - 1])]

  i3 = c(i3,
         if (length(i2 <- grep(end_reg, x))) (i2 + 1)[grepl("^\\s*$", x[i2 + 1])]
  )
  if (length(i3)) x = x[-i3]
  x
}

