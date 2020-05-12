import SimpleContainerGenerator

mkpath("riqi_ml")

cd("riqi_ml")

pkgs = [
    (name = "BSON", version = "* - *", ),
    (name = "Clustering", version = "0.14.0 - *", ),
    (name = "Econometrics", version = "0.2.6 - *", ),
    (name = "FileIO", version = "1.0.0 - *", ),
    (name = "Flux", version = "0.8.0 - *", ),
    (name = "GR", version = "0.48.0 - *", ),
    (name = "ImageMagick", version = "1.0.0 - *", ),
    (name = "Images", version = "0.19.0 - *", ),
    (name = "JLD2", version = "* - *", ),
    (name = "Knet", version = "1.0.0 - *", ),
    (name = "MCMCChains", version = "3.0.12 - *", ),
    (name = "Metalhead", version = "0.5.0 - *", ),
    (name = "MultivariateStats", version = "0.7.0 - *", ),
    (name = "PlotUtils", version = "0.6.5 - *", ),
    (name = "Plots", version = "0.29.9 - *", ),
    (name = "PredictMD", version = "0.34.17 - *", ),
    (name = "PredictMDExtra", version = "0.13.15 - *", ),
    (name = "PredictMDFull", version = "0.13.7 - *", ),
    (name = "RecipesBase", version = "0.8.0 - *", ),
    (name = "StatsPlots", version = "0.14.5 - *", ),
    # (name = "Torch", version = "0.1.0 - *", ),
    (name = "Turing", version = "0.11.0 - *", ),
    (name = "UnicodePlots", version = "1.2.0 - *", ),
]

no_test = String[
    "BSON",
    "Clustering",
    "Econometrics",
    "FileIO",
    "Flux",
    "GR",
    "ImageMagick",
    "Images",
    "JLD2",
    "Knet",
    "MCMCChains",
    "Metalhead",
    "MultivariateStats",
    "PlotUtils",
    "Plots",
    "PredictMD",
    "PredictMDExtra",
    "PredictMDFull",
    "RecipesBase",
    "StatsPlots",
    # "Torch",
    "Turing",
    "UnicodePlots",
]

exclude_packages_from_sysimage = String[
    # "Torch",
    # "Torch_jll",
]

parent_image = "nvidia/cuda:latest"

julia_version = v"1.4.1"

SimpleContainerGenerator.create_dockerfile(pkgs;
                                           exclude_packages_from_sysimage = exclude_packages_from_sysimage,
                                           julia_version = julia_version,
                                           no_test = no_test,
                                           parent_image = parent_image)
