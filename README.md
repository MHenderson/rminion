
<!-- README.md is generated from README.Rmd. Please edit that file -->
rminion
=======

Call [Minion](http://constraintmodelling.org/minion/) from R.

Installation
------------

You can install **rminion** from github with:

``` r
# install.packages("devtools")
devtools::install_github("MHenderson/rminion")
```

Example
-------

The **minionator** package includes the `Latin` problem generator for Latin squares.

``` r
library(minionator)

a <- Latin$new(3)
print(a)
#> MINION 3
#> 
#> **VARIABLES**
#> 
#> DISCRETE l[3,3] {1..3}
#> **SEARCH**
#> PRINT ALL
#> 
#> **CONSTRAINTS**
#> 
#> # Latin constraints
#> 
#> ## Rows
#> 
#> alldiff([l[0, 0], l[0, 1], l[0, 2]])
#> alldiff([l[1, 0], l[1, 1], l[1, 2]])
#> alldiff([l[2, 0], l[2, 1], l[2, 2]])
#> 
#> ## Columns
#> 
#> alldiff([l[0, 0], l[1, 0], l[2, 0]])
#> alldiff([l[0, 1], l[1, 1], l[2, 1]])
#> alldiff([l[0, 2], l[1, 2], l[2, 2]])
#> 
#> **EOF**
```

To solve this problem using Minion just call the `rminion::minion` function.

``` r
library(rminion)

minion(a)
#>   Parsing Time Setup Time First Node Time Initial Propagate
#> 1            0          0               0                 0
#>   First node time Solve Time Total Time Total System Time Total Wall Time
#> 1               0          0          0          0.001031        0.006412
#>   Maximum RSS (kB) Total Nodes Problem solvable? Solutions Found
#> 1              948          23               yes              12
```
