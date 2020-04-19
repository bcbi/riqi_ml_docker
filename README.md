# riqi_ml

`riqi_ml` is a Docker image for doing machine learning with RIQI datasets. It contains PredictMD, Clustering, Econometrics, MultivariateStats, Plots, StatsPlots, Turing, and many other useful machine learning packages.

It is available on Docker Hub as `aluthge/riqi_ml` here: https://hub.docker.com/r/aluthge/riqi_ml

## Files in this repository

1. [`01_create_dockerfile.jl`](01_create_dockerfile.jl): Create the Dockerfile and some helper files
2. [`02_build.jl`](02_build.jl): Build the Docker image
3. [`03_test.jl`](03_test.jl): Run some very basic/minimal tests on the newly build Docker image
4. [`04_push.jl`](04_push.jl): Push the Docker image to Docker Hub

## Plots

For instructions on viewing plots inside a Docker container, please see [`PLOTS.md`](PLOTS.md).

## Powered by SimpleContainerGenerator

`riqi_ml` is powered by [SimpleContainerGenerator](https://github.com/bcbi/SimpleContainerGenerator.jl).
