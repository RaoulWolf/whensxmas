#' @title Days Until Christmas
#' @description A simple function to tell you how many days are left until the next Christmas.
#' @param ... Additional arguments. Currently not implemented.
#' @details The description says it all - plain and simple!
#' @return Returns a message with the number of days left until Christmas.
#' @author Raoul Wolf (\url{https://github.com/RaoulWolf/})
#' @examples {
#' whensxmas()
#' }
#' @importFrom lubridate days year ymd
#' @export
whensxmas <- function(...) {

  today <- Sys.Date()

  current_year <- lubridate::year(today)

  current_xmas <- lubridate::ymd(paste0(current_year, "-12-25"))

  if (today < current_xmas) {

    next_xmas <- current_xmas

  } else if (today > current_xmas) {

    next_xmas <- lubridate::ymd(paste0(current_year + 1, "-12-25"))

  } else if (today == current_xmas) {

    next_xmas <- current_xmas

  }

  xmas_diff <- lubridate::days(next_xmas - today)

  if (today == current_xmas) {

    xmas_text <- "Christmas is today!"

  } else {

    xmas_text <- paste0("Only ", xmas_diff@day, " days until Christmas!")

  }

  message(xmas_text)

}
