import SimpleContainerGenerator

mkpath("riqi_ml")

cd("riqi_ml")

pkgs = [
    (name = "Clustering", version = "0.13.2"), 
    (name = "Econometrics", version = "0.2.6"), 
    (name = "MCMCChains", version = "3.0.12"), 
    (name = "MultivariateStats", version = "0.7.0"),
    (name = "Plots",), 
    (name = "PredictMD", version = "0.34.16"), 
    (name = "PredictMDExtra", version = "0.13.12"), 
    (name = "PredictMDFull", version = "0.13.7"), 
    (name = "StatsPlots",), 
    (name = "Turing", version = "0.9.2"),
]

no_test = String[
    "Clustering",
    "Econometrics",
    "MCMCChains",
    "MultivariateStats",
    "Plots",
    "PredictMD",
    "PredictMDExtra",
    "PredictMDFull",
    "StatsPlots",
    "Turing",
]

exclude_from_sysimage = String[
]

SimpleContainerGenerator.create_dockerfile(pkgs;
                                           # exclude_from_sysimage = exclude_from_sysimage,
                                           julia_version = v"1.4.0",
                                           no_test = no_test)

run(`docker build -t aluthge/riqi_ml .`)
