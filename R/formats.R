
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
##' @param toc A logical variable defaulting to \code{FALSE}.
##' @param slide_level A numeric variable defaulting to two for
##' \sQuote{Metropolis} and \sQuote{Monash}, and three for \sQuote{IQSS}.
##' @param incremental A logical variable defaulting to \code{FALSE}.
##' @param fig_width A numeric variable defaulting to ten.
##' @param fig_height A numeric variable defaulting to seven.
##' @param fig_crop A logical variable defaulting to \code{TRUE}.
##' @param fig_caption A logical variable defaulting to \code{TRUE}.
##' @param dev A character variable defaulting to \dQuote{pdf}.
##' @param df_print A character variable defaulting to \dQuote{default}.
##' @param fonttheme A character variable defaulting to \dQuote{default}.
##' @param highlight A character variable defaulting to \dQuote{tango}.
##' @param keep_tex A logical variable defaulting to \code{FALSE}.
##' @param latex_engine A character variable defaulting to \dQuote{xelatex}.
##' @param citation_package An optional character variable with possible value
##' \dQuote{none}, \dQuote{natbib} (the default), or \dQuote{biblatex}.
##' @param includes An optional character variable defaulting to \code{NULL}.
##' @param md_extensions An optional character variable defaulting to \code{NULL}.
##' @param pandoc_args An optional character variable defaulting to \code{NULL}.
#' @rdname letter
#' @export
slides <- function(toc = FALSE,
                       slide_level = 2,
                       incremental = FALSE,
                       fig_width = 10,
                       fig_height = 7,
                       fig_crop = TRUE,
                       fig_caption = TRUE,
                       dev = 'pdf',
                       df_print = "default",
                       fonttheme = "default",
                       highlight = "tango",
                       keep_tex = FALSE,
                       latex_engine = "xelatex",
                       citation_package = c("none", "natbib", "biblatex"),
                       includes = NULL,
                       md_extensions = NULL,
                       pandoc_args = NULL) {

    template <- system.file("rmarkdown", "templates", "metropolis",
                            "resources", "template.tex",
                            package="bigrmd")

    rmarkdown::beamer_presentation(template = template,
                                   toc = toc,
                                   slide_level = slide_level,
                                   incremental = incremental,
                                   fig_width = fig_width,
                                   fig_height = fig_height,
                                   fig_crop = fig_crop,
                                   fig_caption = fig_caption,
                                   dev = dev,
                                   df_print = df_print,
                                   theme = "metropolis",
                                   fonttheme = fonttheme,
                                   highlight = highlight,
                                   keep_tex = keep_tex,
                                   latex_engine = latex_engine,
                                   citation_package = citation_package,
                                   includes = includes,
                                   md_extensions = md_extensions,
                                   pandoc_args = pandoc_args)

}
