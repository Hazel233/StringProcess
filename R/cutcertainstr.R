#' @title Split a string into multiple strings with a given maximum length
#'
#' @description
#'   The function shortens and cuts a given vector to a predefined length.
#'
#' @param x a string
#' @param split a pattern with the splitting symbol. The default is " ".
#' @param char a numeric with the maximum length of the result.
#' @param newlines a boolean that indicates if the output is seperated by a
#'   newline operator or split into multiple parts.
#'
#' @return returns a vector with the shortened and cut input string
#' @export
#' @examples
#' x <- "Hello world, this is a test sequence."
#' cutcertainstr(x, split = ",", char = 30, newlines = FALSE)
#' # [1] "Hello world,"              " this is a test sequence."
#'
#'
cutcertainstr <- function(x = c(),
                        split = " ",
                        char = 80,
                        newlines = FALSE) {
  # error checks and warnings
  if (length(x) > 1) {
    x <- x[[1]]
    warning("Only the first element is used now!!!")
  } else if (length(x) == 0) {
    # if x is empty return list()
    return(list())
  }

  if (is.na(x)) {
    return(list())
  }

  # splitting
  x1 <- strsplit(x, split, type = "after")[[1]]

  # get number of character
  charsum <- nchar(x1)

  bits <- as.list(rep(as.numeric(NA), length(charsum)))
  last_i <- 1
  for (i in seq_along(charsum)) {
    tmp_sum <- sum(charsum[last_i:i])
    if (tmp_sum > char) {
      last_i <- i
    }
    bits[[last_i]] <- last_i:i
  }

  # check length
  check <- sapply(bits, function(b) sum(nchar(x1[b]), na.rm = TRUE))

  if (any(check > char)) {
    warning("There are longer lines because of the chosen split pattern.")
  }

  # collapse new bits
  bits <- delete_na(bits)
  out <- sapply(bits, function(b) paste(x1[b], collapse = ""))

  if (newlines == TRUE) {
    out <- paste0(out, collapse = "\n")
  }

  return(out)
}
