#' Metal Correlation Heatmap
#'
#' @param correlation_table Output from metal_correlate()
#'
#' @export
metal_heatmap <- function(correlation_table){

  library(ggplot2)

  ggplot(
    correlation_table,
    aes(
      x = Metal,
      y = Taxon,
      fill = Correlation
    )
  ) +
    geom_tile(color = "white") +
    scale_fill_gradient2(
      low = "blue",
      mid = "white",
      high = "red",
      midpoint = 0
    ) +
    theme_bw() +
    ggtitle("Metal-Taxa Correlation Heatmap")
}
