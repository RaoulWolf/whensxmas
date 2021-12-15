#' @title Days Until Christmas
#' @description A simple function to tell you how many days are left until the next Christmas.
#' @param date The target date as "YYYY-MM-DD" character string. Defaults to the current machine date.
#' @param ... Additional arguments. Currently not implemented.
#' @details The description says it all - plain and simple!
#' @return Returns a message with the number of days left until Christmas.
#' @author Raoul Wolf (\url{https://github.com/RaoulWolf/})
#' @examples {
#' whensxmas()
#' }
#' @importFrom lubridate days today year ymd
#' @export
whensxmas <- function(date = NULL, ...) {

  if (is.null(date)) {

    date <- lubridate::today()

  } else {

    date <- lubridate::ymd(date)

  }

  current_year <- lubridate::year(date)

  current_xmas <- lubridate::ymd(paste0(current_year, "-12-25"))

  if (date < current_xmas) {

    next_xmas <- current_xmas

  } else if (date > current_xmas) {

    next_xmas <- lubridate::ymd(paste0(current_year + 1, "-12-25"))

  } else if (date == current_xmas) {

    next_xmas <- current_xmas

  }

  xmas_diff <- lubridate::days(next_xmas - date)

  if (date == current_xmas) {

    xmas_text <- "Christmas is today!"

  } else {

    xmas_text <- paste0("Only ", xmas_diff@day, " days until Christmas!")

  }

  message(xmas_text)

}
