#' "Illinois" (UIUC) Metropolis themed HTML Template for RMarkdown
#'
#' Generates from an RMarkdown file an HTML presentation with "Illinois" (UIUC)
#' colors and identity standards based on the Metropolis theme.
#'
#' @inheritParams xaringan::moon_reader
#'
#' @return
#' A modified [xaringan::moon_reader()] based on the "Illinois" (UIUC)
#' Metropolis themed HTML template.
#'
#' @export
#' @author
#' James Joseph Balamuta (Light Modifications of Metropolis and R function wrapper)
#' See AUTHORS for more specific details behind each of the contributions.
#'
#' @examples
#'
#' \dontrun{
#' # Generate slide deck from beamer template
#' rmarkdown::draft("slide_deck.Rmd", template = "html_imetropolis", package = "uiucthemes")
#'
#' # Compile the document
#' rmarkdown::render("slide_deck/slide_deck.Rmd")
#' }
html_imetropolis <- function(
  self_contained = FALSE,
  seal = TRUE, chakra = "https://remarkjs.com/downloads/remark-latest.min.js",
  nature = list(), ...
  ) {

  css_resources = c("imtheme.css", "fonts-imtheme.css")
  img_resources = c("horizontal-o-illinois.png", "horizontal-rb-illinois.png")

  load_resources_if_missing("html_imetropolis", c(css_resources, img_resources))

  # css_resources <- sapply(c("imtheme.css", "fonts-imtheme.css"), function(x) {
  #   find_resource("html_imetropolis", x)
  # })

  xaringan::moon_reader(
      css = c("default", css_resources),
      lib_dir = "libs",
      self_contained = self_contained,
      seal = seal, chakra = chakra,
      nature = nature,
      ...
    )

}
