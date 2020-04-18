run(`docker run aluthge/riqi_ml "JULIA_DEBUG=all PREDICTMD_TEST_GROUP=all PREDICTMD_TEST_PLOTS=true /usr/bin/julia -e 'import Clustering; import Econometrics; import MCMCChains; import MultivariateStats; import Plots; import PredictMD; import PredictMDExtra; import PredictMDFull; import StatsPlots; import Turing; '"`)

run(`docker run aluthge/riqi_ml "JULIA_DEBUG=all PREDICTMD_TEST_GROUP=all PREDICTMD_TEST_PLOTS=true /usr/bin/julia -e 'import Pkg; Pkg.test(string(:PredictMDExtra)); Pkg.test(string(:PredictMDFull)); Pkg.test(string(:PredictMD))'"`)
