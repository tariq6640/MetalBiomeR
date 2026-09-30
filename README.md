# MetalBiomeR

## Vision

MetalBiomeR is an R package for integrated analysis of heavy metal contamination and microbial communities, including 16S rRNA, ITS, and arbuscular mycorrhizal fungi (AMF) datasets.

## Current Features

- Metal-microbe correlations
- Correlation heatmaps
- Metal-microbe networks
- Keystone taxa detection
- Metal tolerance index
- Bioaccumulation factor
- Translocation factor
- Remediation index

## Installation

```r
devtools::install_github("tariq6640/MetalBiomeR")
```

## Example

```r
corr <- metal_correlate(otu, metal)

metal_heatmap(corr)

g <- metal_network(corr)

keystone_taxa(g)
```

## Authors

### Creator and Maintainer

**Tariq Shah**  

University of North Carolina, NC

### Contributor

**Mohamed Hijri**  
Institut de recherche en biologie végétale (IRBV)  
Université de Montréal


African Genome Center, UM6P, Ben Guerir 43150, Morocco

Scientific guidance, package concept development, validation strategy, and methodological contributions.

## License

MIT