#' Translocation Factor
#'
#' Measures movement of metals
#' from roots to shoots.
#'
#' @param shoot_metal Metal concentration in shoot
#' @param root_metal Metal concentration in root
#'
#' @return numeric
#' @export

translocation_factor <- function(
  shoot_metal,
  root_metal
){

  shoot_metal / root_metal

}
