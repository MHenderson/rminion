#' Call Minion
#'
#' @param ... Character vector of command flags.
#'
#' @export
minion <- function(...) {

  processx::run(
    command          = "minion",
    args             = c(...),
    error_on_status  = FALSE,
    stderr_to_stdout = TRUE,
    echo_cmd         = TRUE
  )

}
