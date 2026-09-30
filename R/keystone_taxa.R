#' Detect Keystone Taxa
#'
#' @param network igraph network
#'
#' @return dataframe
#' @export

keystone_taxa <- function(network){

  library(igraph)

  deg <- degree(network)

  out <- data.frame(
    Taxon = names(deg),
    Degree = deg
  )

  out <- out[order(
    out$Degree,
    decreasing = TRUE
  ), ]

  rownames(out) <- NULL

  return(out)

}