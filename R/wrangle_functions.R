#' fct_case_when()
#'
#' \code{\link{fct_case_when}} extends \code{\link{dplyr::case_when}}. It outputs right hand side values as factors, where the order of resulting factor levels reflects the order in which arguments to the function are specified.
#' This function was developed by StackOverflow  user Dennis YL (see \href{https://stackoverflow.com/questions/49572416/r-convert-to-factor-with-order-of-levels-same-with-case-when}{here}).
#'
#' @return None
#'
#' @examples
#' data %>%
#' mutate(value = fct_case_when(value == 1 ~ "group_1",
#' value == 2 ~ "group_2"))
#'
#' @export
fct_case_when <- function(...) {
  args <- as.list(match.call())
  levels <- sapply(args[-1], function(f) f[[3]])  # extract RHS of formula
  levels <- levels[!is.na(levels)]
  factor(dplyr::case_when(...), levels=levels)
}
