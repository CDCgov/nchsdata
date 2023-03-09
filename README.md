
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nchsdata

<!-- badges: start -->
<!-- badges: end -->

Selected public use files (PUFs) from the National Center for Health
Statistics (NCHS).

## Installation

You can install the development version of nchsdata like so:

``` r
install.packages(c("git2r", "remotes"))

# On local computer
remotes::install_git(
    url = "https://git.biotech.cdc.gov/kpr9/nchsdata"
    , git = "git2r"
    , upgrade = "never")

# On EDAV RStudio
remotes::install_git(
    url = "https://git.biotech.cdc.gov/kpr9/nchsdata"
    , upgrade = "never")
```

## Example

This is a basic example:

``` r
library(nchsdata)

# See available surveys
help(package = "nchsdata")
```
