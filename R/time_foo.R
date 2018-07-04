#' Time function
#'
#' @param x a parameter that is returned after 1 second
#'
#' @return x
#' @export
#'
#' @examples
#' time_foo("asd")
time_foo <- function(x) {
  Sys.sleep(1)
  x
}
