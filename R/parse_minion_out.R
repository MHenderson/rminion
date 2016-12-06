#' Parse the output from Minion
#'
#' @param out
#'
#' @return
#' @export
#'
#' @examples
parse_minion_out <- function(out) {
  tco <- textConnection(out[11:23])
  df <- as.data.frame(read.dcf(tco), stringsAsFactors = FALSE)
  for(i in c(1:11, 13)) { df[, i] <- as.numeric(df[, i]) }
  return(df)
}
