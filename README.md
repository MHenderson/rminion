
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rminion

A simple wrapper around the [Minion](https://github.com/minion/minion)
constraint solver.

## Installation

### Minion

To install Minion, download the Minion repository. The Minion executable
is found in the `bin/` folder.

### R Package

``` r
remotes::install_github("MHenderson/rminion")
```

## Run

Assuming that the Minion repository has been downloaded and that an
environment variable `MINION_PATH` has been defined which points to the
location of the Minion repository, then we can run one of the benchmark
examples like so.

``` r
library(rminion)

dgr_path <- file.path(Sys.getenv("MINION_PATH"), "benchmarks/small/donaldgeraldrobert.minion")

minion(dgr_path)
#> Running minion \
#>   /home/matthew/bin/minion-1.8/benchmarks/small/donaldgeraldrobert.minion
#> $status
#> [1] 0
#> 
#> $stdout
#> [1] "# Minion Version 1.8\n# HG version: 0\n# HG last changed date: unknown\n#  Run at: UTC Thu Dec 17 11:56:01 2020\n\n#    http://minion.sourceforge.net\n# If you have problems with Minion or find any bugs, please tell us!\n# Mailing list at: https://mailman.cs.st-andrews.ac.uk/mailman/listinfo/mug\n# Input filename: /home/matthew/bin/minion-1.8/benchmarks/small/donaldgeraldrobert.minion\n# Command line: minion /home/matthew/bin/minion-1.8/benchmarks/small/donaldgeraldrobert.minion \nParsing Time: 0.000000\nSetup Time: 0.000000\nFirst Node Time: 0.000000\nInitial Propagate: 0.000000\nFirst node time: 0.000000\nSol: 4 \nSol: 3 \nSol: 5 \nSol: 9 \nSol: 1 \nSol: 8 \nSol: 6 \nSol: 2 \nSol: 7 \nSol: 0 \n\nSolution Number: 1\nTime:0.120000\nNodes: 13873\n\nSolve Time: 0.200000\nTotal Time: 0.200000\nTotal System Time: 0.004000\nTotal Wall Time: 0.233074\nMaximum RSS (kB): 62228\nTotal Nodes: 13873\nProblem solvable?: yes\nSolutions Found: 1\n"
#> 
#> $stderr
#> [1] ""
#> 
#> $timeout
#> [1] FALSE
```
