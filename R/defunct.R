#' Defunct functions in the uiucthemes package
#'
#' These functions have been removed from the uiucthemes package.
#' @rdname uiucthemes-defunct
#' @name uiucthemes-defunct
#' @param ... All old parameters being passed into the function.
#' @aliases uiuc_beamer
#' @section Details:
#' \tabular{rl}{
#'   \code{uiuc_beamer} \tab has been removed in favor of \code{\link{beamer_illinois}}\cr
#' }
NULL




#' @rdname uiucthemes-defunct
uiuc_beamer <- function(...){
  .Defunct("gen_gts",
           package="uiucthemes",
           msg="This function has been removed in favor of 'beamer_illinois' instead.")
}
