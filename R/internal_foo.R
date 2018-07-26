#' Uses future_lapply internally
#'
#' @return invisible null
#' @export
#'
#' @examples
#' internal_foo()
internal_foo <- function() {
  n <- 1e7
  df <- data.frame(x = rnorm(n),
                   y = rnorm(n),
                   grp = sample(LETTERS, n, replace = T))

  t0 <- Sys.time()
  a <- future.apply::future_lapply(split(df, df$grp), function(d) {
    time_foo(d)
    nrow(d)
  })
  cat(sprintf("Time spend on code in seconds: %.2f\n", difftime(Sys.time(), t0, "secs")))
}
