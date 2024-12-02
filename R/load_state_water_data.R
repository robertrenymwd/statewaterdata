#' Load State Water Data
#'
#' This function loads the `state_water_data_first_1000.xlsx` file included in the `statewaterdata` package.
#'
#' @return A data frame containing the state water data.
#' @export
#'
#' @examples
#' data <- load_state_water_data()
# In your R script (e.g., R/load_state_water_data.R)

# In your R script (e.g., R/load_state_water_data.R)
load_state_water_data <- function(file_path = NULL) {
  # If no file path is provided, use the package's default file
  if (is.null(file_path)) {
    file_path <- system.file("extdata", "state_water_data_first_1000.xlsx", package = "statewaterdata")

    # If no default file exists, throw an error
    if (file_path == "") {
      stop("No default data file found in the package. Please provide a file path.")
    }
  }

  # Validate file path
  if (!file.exists(file_path)) {
    stop("The specified file does not exist: ", file_path)
  }

  # Use requireNamespace for readxl
  if (!requireNamespace("readxl", quietly = TRUE)) {
    stop("readxl package is required to use this function")
  }

  # Read the Excel file
  data <- readxl::read_excel(file_path)
  return(data)
}
