#' Generate a keyword parser for Minion search output.
#'
#' @param key Output listing value to parse
#' @export
get_minion_out <- function(key = "Solutions Found") {
  function(out) {
    sf_i <- grep(key, out)
    as.numeric(gsub(paste0(key, ": "), "", out[sf_i]))
  }
}
