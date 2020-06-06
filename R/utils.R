# Borrowed several functions from rticles to avoid having to
# deal with name space issues as they were not exported.
# Though, we also do not export these functions.

find_file <- function(template, file) {
  template <- system.file("rmarkdown", "templates", template, file,
                          package = "uiucthemes")
  if (template == "") {
    stop("Couldn't find template file ", template, "/", file, call. = FALSE)
  }

  template
}

find_resource <- function(template, file) {
  find_file(template, file.path("resources", file))
}

inherit_pdf_document <- function(...) {
  fmt <- rmarkdown::pdf_document(...)
  fmt$inherits <- "pdf_document"
  fmt
}

load_resources_if_missing <- function(template_name, resources) {
  for (template_file in resources)
    if (!file.exists(template_file))
      file.copy(system.file("rmarkdown", "templates", template_name, "skeleton",
                            template_file, package="uiucthemes"),
                ".")
}
