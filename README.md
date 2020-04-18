# riqi_ml

`riqi_ml` is a Docker image for doing machine learning with RIQI datasets. It contains PredictMD, Clustering, Econometrics, MultivariateStats, Plots, StatsPlots, Turing, and many other useful machine learning packages.

It is available on Docker Hub as `aluthge/riqi_ml` here: https://hub.docker.com/r/aluthge/riqi_ml

---

Files in this repository:
1. [`build_01.jl`](build_01.jl): Build the Docker image
2. [`test_02.jl`](test_02.jl): Run some very basic/minimal tests on the newly build Docker image
3. [`push_03.jl`](push_03.jl): Push the Docker image to Docker Hub

---

`riqi_ml` is powered by [SimpleContainerGenerator](https://github.com/bcbi/SimpleContainerGenerator.jl).
