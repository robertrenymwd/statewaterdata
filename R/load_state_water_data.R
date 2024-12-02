#' Load State Water Data
#'
#' This function loads the `state_water_data_first_1000.xlsx` file included in the `statewaterdata` package.
#'
#' @return A data frame containing the state water data.
#' @export
#'
#' @examples
#' data <- load_state_water_data()
load_state_water_data <- function() {
  filepath <- system.file("extdata", "state_water_data_first_1000.xlsx", package = "statewaterdata")
  if (file.exists(filepath)) {
    library(readxl)
    return(read_excel(filepath))
  } else {
    stop("Excel file not found in package.")
  }
}
