
#' Output document formats for ASU Bio-inspired Geotechnics group
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce documents ASU BiG style.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Julian Tao
#'
#' @export
letter <- function(...) {
  template <- system.file("rmarkdown/templates/Letter/resources/bigletter.tex",
                          package="bigrmd")
   bookdown::pdf_document2(...,
                          template = template
   )
}

#' @rdname letter
#' @export
exam <- function(...) {
  template <- system.file("rmarkdown/templates/Exam/resources/bigexam.tex",
                          package="bigrmd")
  bookdown::pdf_document2(...,
                          template = template
  )
}

#' @rdname letter
#' @export
paper <- function(...) {
  template <- system.file("rmarkdown/templates/Paper/resources/bigpaper.tex",
                          package="bigrmd")
  bookdown::pdf_document2(...,
                          template = template
  )
}


#' @rdname letter
#' @export
report <- function(...) {
  template <- system.file("rmarkdown/templates/Report/resources/bigreport.tex",
                          package="bigrmd")
  bookdown::pdf_document2(...,
                          template = template
  )
}

#' @rdname letter
#' @export
asce <- function(...) {
  template <- system.file("rmarkdown/templates/ASCE/resources/ascetmplt.tex",
                          package="bigrmd")
  bookdown::pdf_document2(...,
                          template = template
  )
}

#' @rdname letter
#' @export
syllabus <- function(...) {
  template <- system.file("rmarkdown/templates/Syllabus/resources/bigsyllabus.tex",
                          package="bigrmd")
  bookdown::pdf_document2(...,
                          citation_package = 'biblatex',
                          template = template
  )
}

#' @rdname letter
#' @export
slides <- function(...) {
  binb::metropolis(...)
}
