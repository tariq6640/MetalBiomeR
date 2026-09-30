#' Bioaccumulation Factor
#'
#' Calculates metal accumulation
#' from soil into plant tissue.
#'
#' @param plant_metal Metal concentration in plant
#' @param soil_metal Metal concentration in soil
#'
#' @return numeric
#' @export

bioaccumulation_factor <- function(
  plant_metal,
  soil_metal
){

  plant_metal / soil_metal

}