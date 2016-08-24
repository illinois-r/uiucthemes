#' Creates an R Markdown UIUC Beamer Themed Slide Deck
#'
#' Handles routing of the template in the YML file.
#' @param toc \code{TRUE} to include a table of contents in the output (only
#'   level 1 headers will be included in the table of contents).
#' @param slide_level The heading level which defines individual slides. By
#'   default this is the highest header level in the hierarchy that is followed
#'   immediately by content, and not another header, somewhere in the document.
#'   This default can be overridden by specifying an explicit
#'   \code{slide_level}.
#' @param incremental \code{TRUE} to render slide bullets incrementally. Note
#'   that if you want to reverse the default incremental behavior for an
#'   individual bullet you can precede it with \code{>}. For example:
#'   \emph{\code{> - Bullet Text}}
#' @param fig_width Default width (in inches) for figures
#' @param fig_height Default width (in inches) for figures
#' @param fig_caption \code{TRUE} to render figures with captions
#' @param fig_crop \code{TRUE} to automatically apply the \code{pdfcrop} utility
#'   (if available) to pdf figures
#' @param dev Graphics device to use for figure output (defaults to pdf)
#' @param df_print Method to be used for printing data frames. Valid values
#'   include "default", "kable", and "tibble". The "default" method uses
#'   \code{print.data.frame}. The "kable" method uses the
#'   \code{\link[knitr:kable]{knitr::kable}} function. The "tibble" method uses
#'   the \pkg{tibble} package to print a summary of the data frame. In addition
#'   to the named methods you can also pass an arbitrary function to be used
#'   for printing data frames.
#' @param fonttheme Beamer font theme (e.g. "structurebold").
#' @param highlight Syntax highlighting style. Supported styles include
#'   "default", "tango", "pygments", "kate", "monochrome", "espresso",
#'   "zenburn", and "haddock". Pass \code{NULL} to prevent syntax highlighting.
#' @param keep_tex Keep the intermediate tex file used in the conversion to PDF
#' @param latex_engine LaTeX engine for producing PDF output. Options are
#'   "pdflatex", "lualatex", and "xelatex".
#' @param citation_package The LaTeX package to process citations, \code{natbib}
#'   or \code{biblatex}. Use \code{none} if neither package is to be used.
#' @param includes Named list of additional content to include within the
#'  document (typically created using the \code{\link{includes}} function).
#' @param md_extensions Markdown extensions to be added or removed from the
#'  default definition or R Markdown. See the \code{\link{rmarkdown_format}} for
#'  additional details.
#' @param pandoc_args Additional command line options to pass to pandoc
#' @return A modified \code{beamer_presentation} based on the UIUC Beamer Themed
#'   template
#' @export
#' @author RStudio RMarkdown Team (Everything) & JJB (Theme hook)
#' @examples
#' \dontrun{
#'  output:
#'    uiucthemes::uiuc_beamer:
#'      toc: true
#' }
uiuc_beamer <- function(toc = FALSE,
                        slide_level = 3,
                        incremental = FALSE,
                        fig_width = 10,
                        fig_height = 7,
                        fig_crop = TRUE,
                        fig_caption = TRUE,
                        dev = 'pdf',
                        df_print = "default",
                        fonttheme = "default",
                        highlight = "default",
                        keep_tex = FALSE,
                        latex_engine = "pdflatex",
                        citation_package = c("none", "natbib", "biblatex"),
                        includes = NULL,
                        md_extensions = NULL,
                        pandoc_args = NULL){

  template <- find_resource("uiuc_beamer", "template.tex")

  base <- rmarkdown::beamer_presentation(template = template,
                                         toc = toc,
                                         slide_level = slide_level,
                                         incremental = incremental,
                                         fig_width = fig_width,
                                         fig_height = fig_height,
                                         fig_crop = fig_crop,
                                         fig_caption = fig_caption,
                                         dev = dev,
                                         df_print = df_print,
                                         fonttheme = fonttheme,
                                         highlight = highlight,
                                         keep_tex = keep_tex,
                                         latex_engine = latex_engine,
                                         citation_package = citation_package,
                                         includes = includes,
                                         md_extensions = md_extensions,
                                         pandoc_args = pandoc_args)
}
