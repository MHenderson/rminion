#' Run the minion program on the input file whose path is given.
#'
#' @param input_file_path Minion file to process
#'
#' @export
minion <- function(x) UseMethod("minion")

#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
minion.MinionProblem <- function(input) {
  minion_path <- "/home/matthew/bin/minion-1.8/bin/minion"
  options <- "-findallsols -noprintsols"
  tmp <- tempdir()
  input_file_path <- file.path(tmp, "tmp.minion")
  input_file <- file(input_file_path)
  writeLines(input$minion3(), input_file)
  close(input_file)
  cmd <- paste(minion_path, options, input = input_file_path)
  out <- system(cmd, intern = TRUE)
  parse_minion_out(out)
}
