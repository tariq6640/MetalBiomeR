# MetalBiomeR

## Vision

MetalBiomeR is an R package for integrated analysis of heavy metal contamination and microbial communities, including 16S rRNA, ITS, and arbuscular mycorrhizal fungi (AMF) datasets.

## Current Features

## Functions

| Function | Description |
| `metal_correlate() | Metal–taxa correlation analysis |
| `metal_heatmap() | Correlation heatmap visualization |
| `metal_network() | Metal-microbe network generation |
| `keystone_taxa() | Keystone taxa identification |
| `metal_tolerance_index() | Metal tolerance assessment |
| `bioaccumulation_factor() | Plant metal accumulation metric |
| `translocation_factor() | Root-to-shoot metal transfer metric |
| `remediation_index() | Metal removal efficiency calculation |

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
