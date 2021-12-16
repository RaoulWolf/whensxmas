
<!-- README.md is generated from README.Rmd. Please edit that file -->

# When’s Christmas? `{whensxmas}`

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/RaoulWolf/whensxmas/branch/master/graph/badge.svg)](https://app.codecov.io/gh/RaoulWolf/whensxmas?branch=master)
[![R-CMD-check](https://github.com/RaoulWolf/whensxmas/workflows/R-CMD-check/badge.svg)](https://github.com/RaoulWolf/whensxmas/actions)
<!-- badges: end -->

The goal of `{whensxmas}` is to tell you how many more days you have to
wait until Christmas!

## Installation

You can install the development version of `{whensxmas}` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
remotes::install_github("RaoulWolf/whensxmas")
```

## Example

This is a basic example which shows you the main functionality:

``` r
library(whensxmas)
Sys.Date() # for reference
#> [1] "2021-12-16"
whensxmas()
#> Only 9 days until Christmas!
```
