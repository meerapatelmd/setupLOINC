
<!-- README.md is generated from README.Rmd. Please edit that file -->

# setupLOINC

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/setupLOINC)](https://CRAN.R-project.org/package=setupLOINC)
<!-- badges: end -->

The goal of setupLOINC is to instantiate the latest LOINC Table File
(CSV) in Postgres.

## Installation

You can install setupLOINC from [GitHub](https://GitHub.com) with:

``` r
library(devtools)
install_github("meerapatelmd/setupLOINC")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(setupLOINC)
run_setup(conn = conn, 
          schema = "loinc", 
          csv_path = "~/Loinc_2.69_Text_2.69", 
          log_csv_version = "2.69", 
          log_release_date = "2020-12-15")
```
