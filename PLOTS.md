# Viewing Plots Inside a Docker Container

| Table of Contents |
| ----------------- |
| [1. `PredictMD.jl` machine learning framework]() |
| [2. `Plots.jl` metapackage]() |
| [2.1. `UnicodePlots.jl` backend for `Plots.jl`]() |
| [2.2. `GR.jl` backend for `Plots.jl`]() |

## 1. `PredictMD.jl` machine learning framework

```bash
docker run -it -v /Users/MY_USERNAME/Desktop/my_folder:/mount/my_folder aluthge/riqi_ml /bin/bash
```

```julia
julia> rocplottesting = PredictMD.plotroccurve(all_models,
                                               testing_features_df,
                                               testing_labels_df,
                                               single_label_name,
                                               positive_class);

julia> PredictMD.save_plot("/mount/my_folder/my_plot.svg", rocplottesting)
```

The file `/mount/my_folder/my_plot.svg` inside the Docker container corresponds to the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer. So open the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer and you will see the plot.

## 2. `Plots.jl` metapackage

### 2.1. `UnicodePlots.jl` backend for `Plots.jl`

```bash
docker run -it aluthge/riqi_ml /bin/bash
```

```julia
julia> import Plots

julia> import UnicodePlots

julia> Plots.unicodeplots()

julia> x = 0:0.0001:2pi

julia> y = sin.(x);

julia> Plots.plot(x, y)
```

You may see some warnings of the form:
```
Warning: Keyword argument fillcolor not supported with Plots.UnicodePlotsBackend().
```

You can safely ignore those warnings.

### 2.2. `GR.jl` backend for `Plots.jl`

```bash
docker run -it -v /Users/MY_USERNAME/Desktop/my_folder:/mount/my_folder aluthge/riqi_ml /bin/bash
```

```julia
julia> import Plots

julia> import GR

julia> Plots.gr()

julia> x = 0:0.0001:2pi

julia> y = sin.(x);

julia> Plots.plot(x, y)

julia> Plots.savefig("/mount/myfolder/my_plot.svg")
```

The file `/mount/my_folder/my_plot.svg` inside the Docker container corresponds to the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer. So open the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer and you will see the plot.

```julia
julia> import Plots

julia> import GR

julia> Plots.gr()

julia> x = -1.6:0.0001:1.6

julia> y = x.^8 - 8x.^2;

julia> my_plot = Plots.plot(x, y)

julia> Plots.savefig(my_plot, "/mount/myfolder/my_plot.svg")
```

The file `/mount/my_folder/my_plot.svg` inside the Docker container corresponds to the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer. So open the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer and you will see the plot.
