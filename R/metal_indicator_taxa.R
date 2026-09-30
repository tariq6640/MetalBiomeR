#' Indicator Taxa Analysis
#'
#' Identify taxa associated with heavy metal treatments.
#'
#' @param otu OTU abundance matrix (samples × taxa)
#' @param group treatment vector
#'
#' @return indicspecies object
#' @export

metal_indicator_taxa <- function(
  otu,
  group
){

  library(indicspecies)

  otu <- as.data.frame(otu)

  if(nrow(otu) != length(group)){
    stop(
      paste(
        "Samples in OTU table:",
        nrow(otu),
        "| Length of group:",
        length(group)
      )
    )
  }

  res <- indicspecies::multipatt(
    otu,
    group
  )

  return(res)

}