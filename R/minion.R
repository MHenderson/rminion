#' Run the minion program on the input file whose path is given.
#'
#' @param input_file_path Minion file to process
#'
#' @export
minion <- function(input) {
  minion_path <- "/home/matthew/bin/minion-1.8/bin/minion"
  options <- "-findallsols -noprintsols"
  tmp <- tempdir()
  input_file <- file(file.path(tmp, "tmp.minion"))
  writeLines(input, input_file)
  close(input_file)
  cmd <- paste(minion_path, options, input = file.path(tmp, "tmp.minion"))
  out <- system(cmd, intern = TRUE)
}
