#' Remediation Efficiency Index
#'
#' Calculates percentage removal of a metal
#' after remediation treatment.
#'
#' @param control Initial metal concentration
#' @param treated Final metal concentration
#'
#' @return numeric
#' @export

remediation_index <- function(
  control,
  treated
){

  ((control - treated) / control) * 100

}