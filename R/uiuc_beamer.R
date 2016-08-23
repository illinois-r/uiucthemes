#' Creates an R Markdown UIUC Beamer Themed Slide Deck
#'
#' Handles routing of the template in the YML file.
#' @return A modified \code{beamer_presentation} based on the UIUC Beamer Themed
#'   template
#' @export
#' @examples
#' \dontrun{
#'  output:
#'    uiucthemes::uiuc_beamer:
#'      toc: true
#' }
uiuc_beamer <- function(){
  template <- find_resource("uiuc_beamer", "template.tex")

  base <- rmarkdown::beamer_presentation(template = template)
}
