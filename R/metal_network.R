#' Metal-Microbe Network
#'
#' Build network from significant
#' metal-taxa associations.
#'
#' @param correlations Output from metal_correlate()
#' @param cutoff Correlation cutoff
#'
#' @return igraph object
#' @export

metal_network <- function(
  correlations,
  cutoff = 0.6
){

  library(igraph)

  edges <- subset(
    correlations,
    abs(Correlation) > cutoff &
      Pvalue < 0.05
  )

  g <- graph_from_data_frame(
    edges[, c("Taxon","Metal")]
  )

  plot(g)

  return(g)
}