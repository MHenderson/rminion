f <- function(size, i) {
  paste0("l", sprintf("[%s, %s]", i, 0:(size - 1)))
}

var <- function(size) {
  t(matrix(unlist(lapply(0:(size - 1), function(i) f(size, i))), ncol = size))
}

#' Base class for representation of Minion problems.
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
minionProblem <- R6::R6Class("MinionProblem",
 public = list(
   initialize = function(size, ...) {
     private$size = size
     private$variables = var(size)
   },
   minion3 = function(...) {
     R.rsp::rstring(file = private$template, args = private$template_args, ...)
   },
   print_ = function(...) {
     writeLines(as.character(self$minion3(...)))
   }
 ),
 private = list(
   size = NULL,
   variables = NULL,
   template = NULL,
   template_args = NULL
 )
)

#' Print method for MinionProblem objects.
#'
#' @param x
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
print.MinionProblem <- function(x, ...) {
  x$print_()
}
