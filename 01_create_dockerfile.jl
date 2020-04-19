import SimpleContainerGenerator

mkpath("riqi_ml")

cd("riqi_ml")

pkgs = [
    (name = "Clustering", version = "0.14.0 - *", ),
    (name = "Econometrics", version = "0.2.6 - *", ),
    (name = "GR", ),
    (name = "MCMCChains", version = "3.0.12 - *", ),
    (name = "MultivariateStats", version = "0.7.0 - *", ),
    (name = "PlotUtils", ),
    (name = "Plots", ),
    (name = "PredictMD", version = "0.34.17 - *", ),
    (name = "PredictMDExtra", version = "0.13.15 - *", ),
    (name = "PredictMDFull", version = "0.13.7 - *", ),
    (name = "RecipesBase", ),
    (name = "StatsPlots", ),
    (name = "Turing", version = "0.11.0 - *", ),
    (name = "UnicodePlots", ),
]

no_test = String[
    "Clustering",
    "Econometrics",
    "GR",
    "MCMCChains",
    "MultivariateStats",
    "PlotUtils",
    "Plots",
    "PredictMD",
    "PredictMDExtra",
    "PredictMDFull",
    "RecipesBase",
    "StatsPlots",
    "Turing",
    "UnicodePlots",
]

exclude_packages_from_sysimage = String[
]

SimpleContainerGenerator.create_dockerfile(pkgs;
                                           exclude_packages_from_sysimage = exclude_packages_from_sysimage,
                                           julia_version = v"1.4.0",
                                           no_test = no_test)
