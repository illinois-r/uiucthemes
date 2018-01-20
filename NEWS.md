# uiucthemes 0.2.0

## NEW

- Added additional YAML header options such as licensing and safecol feature 
  to `beamer_illinois()`
- Included a preliminary version of `beamer_orange()` template created by
  [Prof. Steven Culpepper](https://stat.illinois.edu/directory/profile/sculpepp)
- Developed a template off of jss style to be used for final reports with
  [Dr. David Dalpiaz](https://daviddalpiaz.com/). This will be updated at a
  later point to use bookdown's `pdf_document2()` option.
- Added a non-exported helper function `load_resources_if_missing()` that
  loads any required resources into the document's working directory if they 
  are missing (e.g. `ilogo.pdf`).

## CHANGES

- The Column I logo has been replaced with the Block I logo per the 
  University's [new identity standards](http://brand.illinois.edu/).

## DEPRECATED

- The name of the `uiuc_beamer()` theme has changed to `beamer_illinois()` as 
  a means to consistently group themes by underlying technology.

# uiucthemes 0.1.1

## NEW 

- Added `uiuc_beamer()` function that enables creation of a beamer presentation
  with UIUC colors and identity standards.
- Enabled TravisCI integration support.
- Added a `NEWS.md` file to track changes to the package.
