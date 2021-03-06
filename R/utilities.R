len_one_arg <- function(x, name) {
  if (length(x) > 1) {
    x <- x[1]
    warning(sprintf("%s has length > 1 and only the first element will be used", name))
  }
  x
}

check_positive <- function(x, name, include_zero = FALSE) {
  if (include_zero && any(x < 0)) {
    stop(sprintf("%s must be >= 0", name))
  } else if (any(x <= 0)) {
    stop(sprintf("%s must be > 0", name))
  }
}

crosssum <- function(x) x + t(x)

symmetrize <- function(x) 0.5 * crosssum(x)

thesame <- function(x) sum(!duplicated(x)) == 1
