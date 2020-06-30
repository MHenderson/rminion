#' Execute minion
#'
#' @param ... Character vector of command flags.
#'
#' @export
minion <- function(...) {

  result <- processx::run("minion",
                          args = c(...),
                          error_on_status = FALSE,
                          stderr_to_stdout = TRUE,
                          echo_cmd = FALSE)

  #unlist(strsplit(result$stdout, "\n"))

  result

}
