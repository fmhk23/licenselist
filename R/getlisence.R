#' Obtain license information from installed R packages.
#'
#' @importFrom desc desc_get
#' @importFrom dplyr %>%
#' @importFrom dplyr filter
#' @importFrom purrr map
#' @importFrom stringr str_c
#'
#' @return license_df Data.Frame with Package name and license.
#'
#' @export
get_license_info <- function(){
  license_df <- data.frame(
    Name = list.files(.libPaths()),
    License = list.files(.libPaths()) %>%
      map(~ desc_get("License", file = str_c(.libPaths(), "/", .x))) %>%
      as.character()
  )
  return(license_df)
}
