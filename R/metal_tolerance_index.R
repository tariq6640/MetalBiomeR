#' Metal Tolerance Index
#'
#' Calculates abundance ratio between
#' contaminated and control conditions.
#'
#' @param stress abundance under contamination
#' @param control abundance under control
#'
#' @return numeric
#' @export

metal_tolerance_index <- function(
  stress,
  control
){

  stress / control

}