#' Correlation Between Metals and Taxa
#'
#' @param otu OTU abundance matrix
#' @param metal Metal concentration data
#' @param method Correlation method
#'
#' @return Data frame
#' @export

metal_correlate <- function(
  otu,
  metal,
  method = "spearman"
){

  taxa <- colnames(otu)
  metals <- colnames(metal)

  results <- data.frame()

  for(t in taxa){

    for(m in metals){

      test <- suppressWarnings(
        cor.test(
          otu[,t],
          metal[,m],
          method = method
        )
      )

      results <- rbind(
        results,
        data.frame(
          Taxon = t,
          Metal = m,
          Correlation = unname(test$estimate),
          Pvalue = test$p.value
        )
      )
    }
  }

  results
}