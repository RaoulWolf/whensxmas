#' @title Days Until Christmas
#' @description A simple function to tell you how many days are left until the
#'   next Christmas.
#' @param date (Character) The target date, preferably in "YYYY-MM-DD" format.
#'   Defaults to the current machine date.
#' @details The description says it all - plain and simple!
#' @return Returns a message with the number of days left until Christmas.
#' @author Raoul Wolf (\url{https://github.com/RaoulWolf/})
#' @examples
#' library(whensxmas)
#' Sys.Date() # for reference
#' whensxmas()
#' @export
whensxmas <- function(date = NULL) {

  if (is.null(date)) {
    date <- Sys.Date()
  } else {
    date <- as.Date(date, optional = TRUE)
  }

  if (is.na(date)) {
    stop(paste("Could not parse the provided date.",
               "Is it in \"YYYY-MM-DD\" format?"),
         call. = FALSE)
  }

  current_year <- as.integer(substr(date, start = 1L, stop = 4L))
  current_xmas <- as.Date(paste0(current_year, "-12-25"))

  if (date < current_xmas) {
    next_xmas <- current_xmas
  } else if (date > current_xmas) {
    next_xmas <- as.Date(paste0(current_year + 1L, "-12-25"))
  } else {
    next_xmas <- current_xmas
  }

  xmas_diff <- as.integer(difftime(next_xmas, date, units = "days"))


  if (date == current_xmas) {
    xmas_text <- "Christmas is today!"
  } else {
    xmas_text <- paste0("Only ", xmas_diff, " days until Christmas!")
  }

  message(xmas_text)

}
