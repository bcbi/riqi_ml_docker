import SimpleContainerGenerator

mkpath("riqi_ml")

cd("riqi_ml")

pkgs = [
    (name = "Econometrics", version = "0.2.6"), 
    # (name = "MCMCChains", version = "3.0.12"), 
    # (name = "Plots", version = "0.28.4"), 
    # (name = "PredictMD", version = "0.34.16"), 
    # (name = "PredictMDExtra", version = "0.13.12"), 
    # (name = "PredictMDFull", version = "0.13.7"), 
    # (name = "StatsPlots", version = "0.13"), 
    # (name = "Turing", version = "0.9.2"),
]

no_test = String[
    "MCMCChains",
    "PredictMD",
    "PredictMDExtra",
    "PredictMDFull",
    "Turing",
]

exclude_from_sysimage = String[
]

SimpleContainerGenerator.create_dockerfile(pkgs;
                                           # exclude_from_sysimage = exclude_from_sysimage,
                                           julia_version = v"1.4.0",
                                           no_test = no_test)

run(`docker build -t aluthge/riqi_ml .`)

run(`docker push aluthge/riqi_ml`)
